package com.campus.diary.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.diary.model.service.FrameService;
import com.campus.diary.model.service.FrameServiceImpl;
import com.campus.diary.model.vo.Frame;
import com.campus.member.model.vo.Member;

/**
 * Servlet implementation class FrameViewServlet
 */
@WebServlet("/diary/frameView.do")
public class FrameViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrameViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		if(request.getSession().getAttribute("member")==null) {
			response.sendRedirect("/main/login/M_Login.jsp"); 
		}else {
		
		// 유저 id를 가지고, db에서 본인이 업로드 한 프레임 정보 리스트 가져오기
		
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		FrameService frService = new FrameServiceImpl();
		ArrayList<Frame> list = frService.selectFrameList(userId);
		
		//System.out.println(list);
		
		RequestDispatcher view = request.getRequestDispatcher("/diary/d_main.jsp");
		request.setAttribute("list", list);
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
