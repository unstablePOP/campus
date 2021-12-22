package com.campus.userPage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.campus.member.model.vo.Member;
import com.campus.userPage.model.service.UserService;
import com.campus.userPage.model.service.UserServiceImpl;

/**
 * Servlet implementation class PwdCheckServlet
 */
@WebServlet("/member/pwdCheck.do")
public class PwdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PwdCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userPwd = request.getParameter("userPwd");
		//System.out.println(userPwd);
		
		HttpSession session = request.getSession();
		
		String userId = ((Member)session.getAttribute("member")).getUserId();
		
		UserService uService = new UserServiceImpl();
		Member m = uService.pwdCheck(userId,userPwd);
		
		if(m!=null)
		{
			session.setAttribute("member", m);
			response.sendRedirect("/userPage/u_information.jsp"); 
		}
		else
		{
			RequestDispatcher view = request.getRequestDispatcher("/userPage/u_pwdCheckFail.jsp");
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
