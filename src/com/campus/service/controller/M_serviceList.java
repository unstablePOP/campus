package com.campus.service.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.member.model.vo.Member;
import com.campus.service.model.service.ServiceService;
import com.campus.service.model.service.ServiceServiceImpl;
import com.campus.service.model.vo.Service;

/**
 * Servlet implementation class M_serviceList
 */
@WebServlet("/main/serviceList.do")
public class M_serviceList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public M_serviceList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getSession().getAttribute("member")==null) {
			response.sendRedirect("/main/error/error.jsp");
			return;
		}
		
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		
		int currentPage;
		
		if(request.getParameter("currentPage")==null) {
			currentPage=1;
		}else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		ServiceService sService = new ServiceServiceImpl();
		HashMap<String, Object> map = sService.serviceList(userId,currentPage);
		
		RequestDispatcher view = request.getRequestDispatcher("/main/service/M_serviceHistory.jsp");
		request.setAttribute("map", map);
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
