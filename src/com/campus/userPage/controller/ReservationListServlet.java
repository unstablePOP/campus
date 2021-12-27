package com.campus.userPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.campus.member.model.vo.Member;
import com.campus.userPage.model.service.UserService;
import com.campus.userPage.model.service.UserServiceImpl;
import com.campus.userPage.model.vo.UserReservation;

/**
 * Servlet implementation class ReservationListServlet
 */
@WebServlet("/userPage/ReservationList.do")
public class ReservationListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReservationListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userId = ((Member)request.getSession().getAttribute("member")).getUserId();
		
		UserService uService = new UserServiceImpl();
		ArrayList<UserReservation> listN = uService.selectAllReservationN(userId);
		ArrayList<UserReservation> listY = uService.selectAllReservationY(userId);		
		
		
		RequestDispatcher view = request.getRequestDispatcher("/userPage/u_reservation.jsp");
		request.setAttribute("UserReservationListN", listN);
		request.setAttribute("UserReservationListY", listY);
		//System.out.println(uReser);
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
