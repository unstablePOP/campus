package com.campus.board.info.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.board.info.model.service.InfoBoardService;
import com.campus.board.info.model.service.InfoBoardServiceImpl;
import com.campus.member.model.vo.Member;

/**
 * Servlet implementation class InfoBoardDeleteServlet
 */
@WebServlet("/board/info/delete.do")
public class InfoBoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InfoBoardDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int infoNo = Integer.parseInt(request.getParameter("infoNo"));
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		
		InfoBoardService infobService = new InfoBoardServiceImpl();
		int result = infobService.delete(infoNo,userId);
		
		RequestDispatcher view = request.getRequestDispatcher("/community/info/delete.jsp");
		
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
