package com.campus.service.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.service.model.service.ServiceService;
import com.campus.service.model.service.ServiceServiceImpl;

/**
 * Servlet implementation class M_serviceAnswer
 */
@WebServlet("/main/serviceAnswer.do")
public class M_serviceAnswer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public M_serviceAnswer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String answerContent = request.getParameter("answer");
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		int serviceNo = Integer.parseInt(request.getParameter("serviceNo"));
		
		ServiceService sService = new ServiceServiceImpl();
		int result = sService.qnaAnswer(answerContent,serviceNo);
		
		PrintWriter out = response.getWriter();
		if(result>0) {
			out.print(true);
		}else {
			out.print(false);
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
