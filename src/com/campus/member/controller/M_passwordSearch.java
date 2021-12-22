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
 * Servlet implementation class M_passworrdSearch
 */
@WebServlet("/main/passwordSearch.do")
public class M_passwordSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public M_passwordSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userEmail = request.getParameter("userEmail");
		String businessId = request.getParameter("businessId");
		String businessEmail = request.getParameter("businessEmail");
		
		MemberService mService = new MemberServiceImpl();
		PrintWriter out = response.getWriter();
		
		Random ran = new Random();
		//임시 비밀번호 랜덤 생성
		String abc = "abcdefghijklmnopqrstuvwxyz0123456789";
		String tmpPwd="";
		for(int i = 0; i<8; i++) {
			tmpPwd += abc.charAt(ran.nextInt(abc.length()));
		}
		
		int tmpPwdResult=0;
		if(userId!=null) {
			//id와 email대조
			boolean result = mService.passwordSearch(userId,userEmail);
			if(result==false) {
				out.print(result);
				return;
			}
			tmpPwdResult = mService.tmpPassword(userId,tmpPwd);
			
		}else {
			//사업자id와 email대조
			boolean result = mService.passwordSearchB(businessId, businessEmail);
			if(result==false) {
				out.print(result);
				return;
			}
			tmpPwdResult = mService.tmpPasswordB(businessId, tmpPwd);
		}
		//DB에서 처리를 못한경우 error 보내고 servlet 종료
		if(tmpPwdResult==0) {
			out.print("error");
			return;
		}
		
		try {
			if(userEmail!=null) {
				M_sendMailTmpPwd.sendMail(userEmail,tmpPwd);
			}else {
				M_sendMailTmpPwd.sendMail(businessEmail,tmpPwd);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		out.print(true);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
