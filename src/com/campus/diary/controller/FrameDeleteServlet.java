package com.campus.diary.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.diary.model.service.FrameService;
import com.campus.diary.model.service.FrameServiceImpl;

/**
 * Servlet implementation class FrameDeleteServlet
 */
@WebServlet("/diary/frameDeletedo")
public class FrameDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrameDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		int frameNo = Integer.parseInt(request.getParameter("frameNo"));
		String imagePath = request.getParameter("imagePath");
		
		//System.out.println(frameNo);
		//System.out.println(imagePath);
		
		
		FrameService frService = new FrameServiceImpl();
		int result = frService.deleteFrame(frameNo);
		
		
		if(result>0) 
		{
			// 서버에 있는 사진도 삭제해야함
			
			File file = new File(imagePath);
			if(file.exists()) // 파일이 서버에 존재하면 삭제
			{
				file.delete();
			}

			request.setAttribute("frameDeleteResult", true);
			response.sendRedirect("/diary/frameDeleteResult.jsp");
		}
		else
		{
			request.setAttribute("frameDeleteResult", false);
			response.sendRedirect("/diary/frameDeleteResult.jsp");
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
