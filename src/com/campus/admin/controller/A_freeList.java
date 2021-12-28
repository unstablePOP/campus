package com.campus.admin.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.admin.service.AdminService;
import com.campus.admin.service.AdminServiceImpl;
import com.campus.member.model.vo.Member;

/**
 * Servlet implementation class A_freeList
 */
@WebServlet("/admin/freeList.do")
public class A_freeList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A_freeList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(!((Member)request.getSession().getAttribute("member")).getUserId().equals("admin")) {
			System.out.println(((Member)request.getSession().getAttribute("member")).getUserId());
			response.sendRedirect("/main/error/error.jsp");
			return;
		}
		
		int currentPage;
		
		if(request.getParameter("currentPage")==null) {
			currentPage=1;
		}else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		HashMap<String, Object> map = new HashMap<String, Object>();
			AdminService aService = new AdminServiceImpl();
			map = aService.freeList(currentPage);
			
		RequestDispatcher view = request.getRequestDispatcher("/admin/dashboard/pages/BusinessManage.jsp");
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
