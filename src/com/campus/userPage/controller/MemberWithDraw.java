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
 * Servlet implementation class MemberWithDraw
 */
@WebServlet("/member/memberWithDraw.do")
public class MemberWithDraw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberWithDraw() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 사용자가 입력한 비밀번호
		String inputUserPwd = request.getParameter("pwd");
		
		// 세션에서 가져온 비밀번호 
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("member");
		String userPwd = m.getUserPwd();
		
		// 입력한 비밀번호와 회원 비밀번호가 일치할 때
		if(inputUserPwd.equals(userPwd))
		{
			// userNo를 가지고 탈퇴 처리 진행
			int userNo = m.getUserNo();
			
			// 비즈니스 로직
			UserService uService = new UserServiceImpl();
			int result = uService.deleteOneMember(userNo);
			

			RequestDispatcher view = request.getRequestDispatcher("/userPage/u_memberWithDrawResult.jsp");
			if(result>0)
			{
				request.setAttribute("result", true);
				request.getSession().invalidate(); // 회원탈퇴 성공시 세션 파기
			}
			else
			{
				request.setAttribute("result", false);
			}
			request.setAttribute("userId", m.getUserId());
			
			view.forward(request, response);
			
			
			
		}
		else // 일치하지 않으면 돌려보내기
		{
			request.setAttribute("pwdCheckResult", false);
			response.sendRedirect("/userPage/u_withdrawPwdFail.jsp"); 
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
