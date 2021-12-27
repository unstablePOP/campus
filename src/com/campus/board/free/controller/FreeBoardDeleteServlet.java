package com.campus.board.free.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.board.free.model.service.FreeBoardService;
import com.campus.board.free.model.service.FreeBoardServiceImpl;
import com.campus.member.model.vo.Member;

/**
 * Servlet implementation class FreeBoardDelete
 */
@WebServlet("/board/free/delete.do")
public class FreeBoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreeBoardDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int freeNo = Integer.parseInt(request.getParameter("freeNo"));
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		
		FreeBoardService freebService = new FreeBoardServiceImpl();
		int result = freebService.delete(freeNo,userId);
		
		RequestDispatcher view = request.getRequestDispatcher("/community/free/delete.jsp");
		
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
