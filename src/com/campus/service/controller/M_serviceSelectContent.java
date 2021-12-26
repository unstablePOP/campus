package com.campus.service.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.service.model.service.ServiceService;
import com.campus.service.model.service.ServiceServiceImpl;
import com.campus.service.model.vo.Answer;
import com.campus.service.model.vo.Service;

/**
 * Servlet implementation class M_serviceSelectContent
 */
@WebServlet("/main/serviceSelectContent.do")
public class M_serviceSelectContent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public M_serviceSelectContent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int serviceNo = Integer.parseInt(request.getParameter("serviceNo"));
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		ServiceService sService = new ServiceServiceImpl();
		Service s = sService.serviceSelectContent(serviceNo);
		Answer a = sService.qnaAnswerContent(serviceNo);
		
		RequestDispatcher view = request.getRequestDispatcher("/main/service/M_serviceContent.jsp");
		request.setAttribute("s", s);
		if(a!=null) {
			request.setAttribute("a", a);
		}
		request.setAttribute("currentPage", currentPage);
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
