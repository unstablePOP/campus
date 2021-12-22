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
import com.campus.member.model.vo.Member;

/**
 * Servlet implementation class M_idResult
 */
@WebServlet("/main/idResult.do")
public class M_idResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public M_idResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userEmail = request.getParameter("userEmail");
		String businessEmail = request.getParameter("businessEmail");
		
		MemberService mService = new MemberServiceImpl();
		
		RequestDispatcher view = request.getRequestDispatcher("/main/id,pwd/idResult.jsp");
		
		//userEmail이 비어있다면 = 사업자인 경우
		if(userEmail.equals("")) {
			String businessId = mService.businessIdSearchResult(businessEmail);
			request.setAttribute("businessId", businessId);
		//userEmail이 비어있지 안다면 = 유저인 경우
		}else {
			String userId = mService.userIdSearchResult(userEmail);
			request.setAttribute("userId", userId);
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
