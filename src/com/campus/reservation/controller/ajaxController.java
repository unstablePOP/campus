package com.campus.reservation.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.campus.reservation.model.service.CampingAreaService;
import com.campus.reservation.model.service.CampingAreaServiceImpl;
import com.campus.reservation.model.vo.CampingArea;



@WebServlet("/reservation/ajax.do")
public class ajaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

    	/**
         * @see HttpServlet#HttpServlet()
         */
        public ajaxController() {
            super();
            // TODO Auto-generated constructor stub
        }

    	/**
    	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    	 */
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    			
    			
    			int rsvSeq = Integer.parseInt(request.getParameter("rsvSeq"));
    			CampingAreaService campingAreaService = new CampingAreaServiceImpl();
    			ArrayList<CampingArea> list = campingAreaService.selectArea(rsvSeq);
    			
    			JSONObject map = new JSONObject(); 
    			System.out.println("rsvSeq::"+rsvSeq);
    				
    				for(CampingArea m : list) {

						JSONObject json = new JSONObject();
						
						json.put("campSeq",m.getCampSeq());
						json.put("businessNo", m.getBusinessNo());
						json.put("businessName", m.getBusinessName());
						json.put("campNo",  m.getCampNo());
						json.put("campName",  m.getCampName());
						json.put("campType",  m.getCampType());
						json.put("campPo",  m.getCampPo());
						json.put("campMaxpo",  m.getCampMaxpo());
						json.put("campPrice",  m.getCampPrice());
						json.put("checkin",  m.getCheckin());
						json.put("checkout",  m.getCheckout());
						json.put("reservNotice",  m.getReservNotice());
						json.put("campPrice",  m.getCampPrice());
						json.put("reservInfo",  m.getReservInfo());
						json.put("filename",  m.getFilename());
						
    					map.put(m.getCampSeq(), json); //key : value
    					break;
    					
    				}

    			response.setCharacterEncoding("UTF-8");
    			
    			PrintWriter out = response.getWriter();
    			
    			out.print(map);
    	
    	}

    	/**
    	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    	 */
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		// TODO Auto-generated method stub
    		doGet(request, response);
    	}


}
