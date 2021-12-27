package com.campus.board.market.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.board.market.model.service.MarketBoardService;
import com.campus.board.market.model.service.MarketBoardServiceImpl;
import com.campus.board.market.model.vo.MarketBoard;
import com.campus.member.model.vo.Member;

/**
 * Servlet implementation class MarketBoardWriteServlet
 */
@WebServlet("/board/market/write.do")
public class MarketBoardWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MarketBoardWriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String marketTitle = request.getParameter("marketTitle");
		String marketContent = request.getParameter("marketContent");
		
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		
		MarketBoard marketBoard = new MarketBoard();
		marketBoard.setMarketTitle(marketTitle);
		marketBoard.setMarketContent(marketContent);
		marketBoard.setUserId(userId);
		
		MarketBoardService marketbService = new MarketBoardServiceImpl();
		int result=marketbService.insert(marketBoard);
		
		RequestDispatcher view = request.getRequestDispatcher("/community/market/write.jsp");
		
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
