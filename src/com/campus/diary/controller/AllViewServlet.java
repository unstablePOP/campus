package com.campus.diary.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.diary.model.service.DiaryService;
import com.campus.diary.model.service.DiaryServiceImpl;
import com.campus.diary.model.vo.Background;
import com.campus.diary.model.vo.Frame;
import com.campus.diary.model.vo.Title;
import com.campus.member.model.vo.Member;

/**
 * Servlet implementation class AllViewServlet
 */
@WebServlet("/diary/allView.do")
public class AllViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		if(request.getSession().getAttribute("member")==null) {
			response.sendRedirect("/main/login/M_Login.jsp"); 
		}else {
		
		// 유저 id를 가지고, 
		//db에서 본인이 업로드 한 프레임 정보 리스트, 타이틀, 배경 가져오기
		
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		DiaryService dService = new DiaryServiceImpl();
		
		//프레임 리스트 가져오기
		ArrayList<Frame> list = dService.selectFrameList(userId);
		//타이틀 가져오기
		Title title = dService.selectTitle(userId);
		//배경 가져오기
		Background back = dService.selectBackground(userId);
		
		
		//System.out.println(list);
		
		RequestDispatcher view = request.getRequestDispatcher("/diary/d_main.jsp");
		request.setAttribute("list", list);
		request.setAttribute("title", title);
		request.setAttribute("background", back);
		//System.out.println(back);
		view.forward(request, response);
		}
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
