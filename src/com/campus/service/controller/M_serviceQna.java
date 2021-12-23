package com.campus.service.controller;

import java.io.IOException;

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
 * Servlet implementation class M_serviceQna
 */
@WebServlet("/main/serviceQna.do")
public class M_serviceQna extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public M_serviceQna() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		String serviceType = request.getParameter("serviceType");
		String serviceSubject = request.getParameter("serviceSubject");
		String serviceContent = request.getParameter("serviceContent");
		String serviceEmail = request.getParameter("serviceEmail");
		
		Service s = new Service(userId, serviceType, serviceSubject, serviceContent, serviceEmail);
		
		ServiceService sService = new ServiceServiceImpl();
		int result = sService.writeService(s);
		
		RequestDispatcher view = request.getRequestDispatcher("/main/service/M_serviceResult.jsp");
		if(result>0) {
			request.setAttribute("result", true);
		}else {
			request.setAttribute("result", false);
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
