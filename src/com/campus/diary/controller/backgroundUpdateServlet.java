package com.campus.diary.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.diary.model.service.DiaryService;
import com.campus.diary.model.service.DiaryServiceImpl;
import com.campus.diary.model.vo.Background;
import com.campus.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class backgroundUpdateServlet
 */
@WebServlet("/diary/updateBack.do")
public class backgroundUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public backgroundUpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		// 업로드 경로 세팅
		String uploadImagePath = request.getServletContext().getRealPath("/diary/uploadBackImage");
		
		// 업로드 유저
		String userId = ((Member) request.getSession().getAttribute("member")).getUserId();
		
		// 우선, 서버에 먼저있던 사진을 지운 후에 디비의 사진을 변경해준다.
		// 디비에서 사용자 검색 했을때 있으면 -> 서버의 사진을 지움 (디비는 변경해주는 거라서 지울 필요 x)
		// 그 다음 사진 업데이트
		DiaryService dService = new DiaryServiceImpl();
		Background backCheckResult = dService.selectBackground(userId);
		if(backCheckResult!=null) {
			
			// 서버 사진 삭제
			File file = new File(uploadImagePath+ "/" +backCheckResult.getDiaryBackName());
			//System.out.println(file);
			if(file.exists()) // 파일이 서버에 존재하면 삭제
			{						
				file.delete();
				//System.out.println("서버 파일 삭제");
			}
		}
		

		// ----- 삭제 후 사진 업데이트 로직 (디비에 있으면 update 없으면 insert) -----
		// 이미지 최대 사이즈
		int uploadImageSizeLimit = 1024 * 1024 * 50; // 50MB

		// 이미지 이름 인코딩 처리 값
		String encType = "UTF-8";

		// 정책 설정 - DefaultFileRenamePolicy 사용

		// 위 정보를 가지고, MultipartRequest 객체 생성 -> 객체를 생성하는 순간 경로에 이미지 업로드 됨
		MultipartRequest multi = new MultipartRequest(request, uploadImagePath, uploadImageSizeLimit, encType,
				new DefaultFileRenamePolicy());

		// 파일 사이즈 검증
		File tmp = new File(uploadImagePath + "\\" + multi.getFilesystemName("file"));
		// System.out.println("검증 파일 사이즈 : " +tmp.length());

		if (tmp.length() > (1024 * 1024 * 1024)) {
			tmp.delete(); // 해당 파일 삭제
			response.sendRedirect("/diary/d_fileSizeLimit.jsp");
			return;
		}

		// ---- db에 저장하기 위한 처리 ----

		// 인코딩
		request.setCharacterEncoding("UTF-8");
		// 업로드 유저 id -> 위에 코드 있음
		// 사진 이름
		String diaryBackName = multi.getFilesystemName("backImage");
		// 사진 경로
		String diaryBackPath = "/diary/uploadBackImage/" + diaryBackName;
		/*
		System.out.println(userId);
		System.out.println(diaryBackName);
		System.out.println(diaryBackPath);
		*/
		Background bg = new Background();
		bg.setUserId(userId);
		bg.setDiaryBackName(diaryBackName);
		bg.setDiaryBackPath(diaryBackPath);
		
		int result = dService.updateBackground(bg);
		
		RequestDispatcher view = request.getRequestDispatcher("/diary/d_backUpdateResult.jsp");
		if(result>0)
		{
			request.setAttribute("backUpdateResult", true);
		}
		else
		{
			request.setAttribute("backUpdateResult", false);
		}
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
