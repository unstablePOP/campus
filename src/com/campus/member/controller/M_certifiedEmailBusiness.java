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
 * Servlet implementation class M_certifiedEmailBusiness
 */
@WebServlet("/main/certifiedEmailBusiness.do")
public class M_certifiedEmailBusiness extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public M_certifiedEmailBusiness() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		MemberService mService = new MemberServiceImpl();
		boolean result = mService.emailCheckB(email);
		PrintWriter out = response.getWriter();
		if(result) {
			out.print(result);
			return;
		}
		
		Random ran = new Random();
		String certifiedNum="";
		for(int i = 0; i<5; i++) {
			String ranNum = String.valueOf(ran.nextInt(10));
			certifiedNum += ranNum;
		}
		
		try {
			M_sendMail.sendMail(email,certifiedNum);
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
