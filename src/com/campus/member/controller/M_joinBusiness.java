package com.campus.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.member.model.service.MemberService;
import com.campus.member.model.service.MemberServiceImpl;
import com.campus.member.model.vo.Business;

/**
 * Servlet implementation class M_joinBusiness
 */
@WebServlet("/main/joinBusiness.do")
public class M_joinBusiness extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public M_joinBusiness() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String businessId = request.getParameter("businessId");
		String businessPwd = request.getParameter("businessPwd");
		String businessName = request.getParameter("businessName");
		String businessPhone = request.getParameter("businessPhone");
		String businessAddress = request.getParameter("businessAddress");
		String businessEmail = request.getParameter("businessEmail");
		String businessUrl = request.getParameter("businessUrl");
		
		Business b = new Business(businessId,businessPwd,businessName,businessPhone,businessAddress,businessEmail,businessUrl);
		
		MemberService mService = new MemberServiceImpl();
		int result = mService.businessJoin(b);
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
