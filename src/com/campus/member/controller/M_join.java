package com.campus.member.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.member.model.service.MemberService;
import com.campus.member.model.service.MemberServiceImpl;
import com.campus.member.model.vo.Member;

/**
 * Servlet implementation class M_joinDo
 */
@WebServlet("/main/join.do")
public class M_join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public M_join() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		Date userBirth = Date.valueOf(request.getParameter("userBirth"));
		String userPhone = request.getParameter("userPhone");
		String userAddress = request.getParameter("userAddress");
		String userEmail = request.getParameter("email");
		char userGender = request.getParameter("gender").charAt(0);
		
		Member m = new Member(userId,userPwd,userName,userBirth,userPhone,userAddress,userEmail,userGender);
		
		MemberService mService = new MemberServiceImpl();
		int result = mService.memberJoin(m);
		RequestDispatcher view = request.getRequestDispatcher("/main/join/joinResult.jsp");
		if(result>0) {
			request.setAttribute("result", true);
		}else {
			request.setAttribute("result", false);
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
