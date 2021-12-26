package com.campus.userPage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.member.model.vo.Member;
import com.campus.userPage.model.service.UserService;
import com.campus.userPage.model.service.UserServiceImpl;

/**
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/member/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String userPwd = request.getParameter("pwd");
		String userPhone = request.getParameter("phone");
		String userAddress = request.getParameter("address");
		
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		
		Member m = new Member(userId, userPwd, userPhone, userAddress);
		
		UserService uService = new UserServiceImpl();
		int result = uService.updateOneMember(m);

		RequestDispatcher view = request.getRequestDispatcher("/userPage/u_memberUpdateResult.jsp");
		
		if(result>0) 
		{
			request.setAttribute("updateResult", true);
		}
		else
		{
			request.setAttribute("updateResult", false);
		}
		
		view.forward(request, response);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
