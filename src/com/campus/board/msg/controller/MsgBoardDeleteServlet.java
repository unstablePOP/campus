package com.campus.board.msg.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.board.msg.model.service.MsgBoardService;
import com.campus.board.msg.model.service.MsgBoardServiceImpl;
import com.campus.member.model.vo.Member;

/**
 * Servlet implementation class MsgBoardDeleteServlet
 */
@WebServlet("/board/msg/delete.do")
public class MsgBoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MsgBoardDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int msgNo = Integer.parseInt(request.getParameter("msgNo"));
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		
		MsgBoardService msgbService = new MsgBoardServiceImpl();
		int result = msgbService.delete(msgNo,userId);
		
		RequestDispatcher view = request.getRequestDispatcher("/community/msg/delete.jsp");
		
		if(result>0) {
			request.setAttribute("deleteResult", true);
		}else {
			request.setAttribute("deleteResult", false);
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
