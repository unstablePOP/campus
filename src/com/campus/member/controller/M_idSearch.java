package com.campus.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.member.model.service.MemberService;
import com.campus.member.model.service.MemberServiceImpl;

/**
 * Servlet implementation class M_idSearch
 */
@WebServlet("/main/idSearch.do")
public class M_idSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public M_idSearch() {
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
		PrintWriter out = response.getWriter();
		if(userEmail!=null) {
			boolean result = mService.emailCheck(userEmail);
			
			if(!result) {
				out.print(result);
				return;
			}
			
		}else {
			boolean result = mService.emailCheckB(businessEmail);
			if(!result) {
				out.print(result);
				return;
			}
		}
		
		Random ran = new Random();
		String certifiedNum="";
		for(int i = 0; i<5; i++) {
			String ranNum = String.valueOf(ran.nextInt(10));
			certifiedNum += ranNum;
		}
		
		try {
			if(userEmail!=null) {
				M_sendMail.sendMail(userEmail,certifiedNum);
			}else {
				M_sendMail.sendMail(businessEmail,certifiedNum);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		out.print(certifiedNum);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
