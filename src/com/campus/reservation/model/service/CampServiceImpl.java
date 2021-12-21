package com.campus.reservation.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.campus.common.JDBCTemplate;
import com.campus.reservation.model.dao.CampDAO;
import com.campus.reservation.model.vo.Camp;

public class CampServiceImpl implements CampService {

	private CampDAO cDAO = new CampDAO();
	
	@Override
	public void selectAllCampList(int currentPage) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int recordCountPerPage = 5;
		ArrayList<Camp> list = cDAO.selectAllCampPageList(conn, currentPage, recordCountPerPage);
		
	}

}
