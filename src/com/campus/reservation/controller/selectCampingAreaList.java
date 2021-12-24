package com.campus.reservation.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.reservation.model.service.CampingAreaService;
import com.campus.reservation.model.service.CampingAreaServiceImpl;

/**
 * Servlet implementation class selectCampingAreaList
 */
@WebServlet("/reservation/SelectCampingAreaList.do")
public class selectCampingAreaList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public selectCampingAreaList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int currentPage;
		if(request.getParameter("currentPage")==null)
		{
			currentPage=1;
		}else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		
	CampingAreaService campingAreaService = new CampingAreaServiceImpl();
	HashMap<String, Object> pageDataMap = campingAreaService.selectAllList(currentPage);
	
	
	RequestDispatcher view = request.getRequestDispatcher("/reservation/views/campingArea.jsp");
	
	request.setAttribute("pageDataMap", pageDataMap);
	request.setAttribute("currentPage", pageDataMap);
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
