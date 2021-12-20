package com.campus.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.campus.member.model.service.MemberService;
import com.campus.member.model.service.MemberServiceImpl;
import com.campus.member.model.vo.Business;

/**
 * Servlet implementation class M_loginBusiness
 */
@WebServlet("/main/loginBusiness.do")
public class M_loginBusiness extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public M_loginBusiness() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String businessId = request.getParameter("businessId");
		String businessPwd = request.getParameter("businessPwd");
		
		MemberService mService = new MemberServiceImpl();
		Business b = mService.loginBusiness(businessId,businessPwd);
		
		if(b!=null) {
			HttpSession session =  request.getSession();
			session.setAttribute("business", b);
			response.sendRedirect("/");
		}else {
			RequestDispatcher view = request.getRequestDispatcher("/main/login/M_LoginFail.jsp");
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
