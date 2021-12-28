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
import com.campus.board.info.model.vo.InfoPage;

/**
 * Servlet implementation class InfoBoardListAllServlet
 */
@WebServlet("/board/info/listAll.do")
public class InfoBoardListAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InfoBoardListAllServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage;
		if (request.getParameter("currentPage") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		InfoBoardService infobService = new InfoBoardServiceImpl();
		InfoPage page = infobService.infoboardListAll(currentPage);
		
		RequestDispatcher view = request.getRequestDispatcher("/community/info/infoboard.jsp");
		request.setAttribute("infopage", page);
		request.setAttribute("currentPage", currentPage);
		view.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
