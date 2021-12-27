package com.campus.board.market.controller;

import java.io.IOException;
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
 * Servlet implementation class MarketBoardUpdateServlet
 */
@WebServlet("/board/market/postUpdate.do")
public class MarketBoardUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MarketBoardUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String marketContent = request.getParameter("content");
		int marketNo = (Integer.parseInt(request.getParameter("marketNo")));
		
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		
		MarketBoard marketBoard=new MarketBoard();
		marketBoard.setMarketContent(marketContent);
		marketBoard.setMarketNo(marketNo);
		marketBoard.setUserId(userId);
		
		MarketBoardService marketbService=new MarketBoardServiceImpl();
		int result=marketbService.update(marketBoard);
		
		if(result>0) {
			response.sendRedirect("/board/market/selectOne.do?marketNo="+marketNo);
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
