package com.campus.board.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.board.info.model.service.InfoBoardService;
import com.campus.board.info.model.service.InfoBoardServiceImpl;
import com.campus.board.info.model.vo.InfoBoard;
import com.campus.member.model.vo.Member;

/**
 * Servlet implementation class InfoBoardUpdateServlet
 */
@WebServlet("/board/info/postUpdate.do")
public class InfoBoardUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InfoBoardUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String infoContent = request.getParameter("content");
		int infoNo = (Integer.parseInt(request.getParameter("infoNo")));
		
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		
		InfoBoard infoBoard=new InfoBoard();
		infoBoard.setInfoContent(infoContent);
		infoBoard.setInfoNo(infoNo);
		infoBoard.setUserId(userId);
		
		InfoBoardService infobService=new InfoBoardServiceImpl();
		int result=infobService.update(infoBoard);
		
		if(result>0) {
			response.sendRedirect("/board/info/selectOne.do?infoNo="+infoNo);
		}else
		{
			response.sendRedirect("/main/error/error.jsp");
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
