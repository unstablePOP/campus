package com.campus.diary.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.diary.model.service.DiaryService;
import com.campus.diary.model.service.DiaryServiceImpl;
import com.campus.diary.model.vo.Title;
import com.campus.member.model.vo.Member;

/**
 * Servlet implementation class TitleUpdateServlet
 */
@WebServlet("/diary/updateTitle.do")
public class TitleUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TitleUpdateServlet() {
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
		
		
		
		request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		//System.out.println(title);
		
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		//System.out.println(userId);
		
		Title t = new Title(userId, title);
		
		DiaryService dService = new DiaryServiceImpl();
		int result = dService.updateTitle(t);
		

		RequestDispatcher view = request.getRequestDispatcher("/diary/d_titleUpdateResult.jsp");
	
		if(result>0) 
		{
			request.setAttribute("titleUpdateResult", true);
		}
		else
		{
			request.setAttribute("titleUpdateResult", false);
		}
		
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
