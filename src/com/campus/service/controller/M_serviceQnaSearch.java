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
import com.campus.service.model.vo.Service;

/**
 * Servlet implementation class M_serviceQnaUpdate
 */
@WebServlet("/main/serviceQnaSearch.do")
public class M_serviceQnaSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public M_serviceQnaSearch() {
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
		
		RequestDispatcher view = request.getRequestDispatcher("/main/service/M_serviceQuestionUpdate.jsp");
		request.setAttribute("s", s);
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
