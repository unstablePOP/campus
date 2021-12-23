package com.campus.board.free.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FreeBoardSelectOneServlt
 */
@WebServlet(name = "FreeBoardSelectOneServlet", urlPatterns = { "/board/free/selectOne.do" })
public class FreeBoardSelectOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreeBoardSelectOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		System.out.println(boardNo);
		
		BoardService bService = new BoardServiceImpl();
		Board board = bService.selectOneContent(boardNo);
		
		if (board != null) {
			RequestDispatcher view = request.getRequestDispatcher("/views/board/boardOneSelect.jsp");
			request.setAttribute("board", board);
			view.forward(request, response);

		} else {
			response.sendRedirect("/views/error/boardError.jsp");
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
