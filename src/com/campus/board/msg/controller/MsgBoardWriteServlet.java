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
import com.campus.board.msg.model.vo.MsgBoard;
import com.campus.member.model.vo.Member;

/**
 * Servlet implementation class MsgBoardWriteServlet
 */
@WebServlet("/board/msg/write.do")
public class MsgBoardWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MsgBoardWriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String msgTitle = request.getParameter("msgTitle");
		String sendId = request.getParameter("sendId");
		String receiveId = request.getParameter("receiveId");
		String msgContent = request.getParameter("msgContent");
		
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		
		MsgBoard msgBoard = new MsgBoard();
		msgBoard.setMsgTitle(msgTitle);
		msgBoard.setMsgContent(msgContent);
		msgBoard.setSendId(sendId);
		msgBoard.setReceiveId(receiveId);
		
		MsgBoardService msgbService = new MsgBoardServiceImpl();
		int result=msgbService.insert(msgBoard);
		
		RequestDispatcher view = request.getRequestDispatcher("/community/msg/write.jsp");
		
		if(result>0)
		{
			request.setAttribute("writeResult", true);
		}else
		{
			request.setAttribute("writeResult", false);
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
