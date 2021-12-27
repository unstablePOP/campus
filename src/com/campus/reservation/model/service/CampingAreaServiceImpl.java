package com.campus.reservation.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.campus.common.JDBCTemplate;
import com.campus.reservation.model.dao.CampingAreaDAO;
import com.campus.reservation.model.vo.CampingArea;

public class CampingAreaServiceImpl implements CampingAreaService{
	private CampingAreaDAO campingAreaDAO = new CampingAreaDAO();
	
	@Override
	public HashMap<String, Object> selectAllList(int bsnNo, int currentPage) {

		int recordCountPerPage = 5;
		int naviCountPerPage = 5;
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<CampingArea> list = campingAreaDAO.selectAllList(conn, bsnNo, currentPage, recordCountPerPage);
		
		String pageNavi = campingAreaDAO.getPageNavi(conn, bsnNo, naviCountPerPage, recordCountPerPage, currentPage);
		
		JDBCTemplate.close(conn);
		
		HashMap<String, Object> hm = new HashMap<String, Object>();

		hm.put("list", list);
		hm.put("pageNavi", pageNavi);
		
		return hm;		

	}

	@Override
	public HashMap<String, Object> selectMainList(int currentPage, String location) {
		int recordCountPerPage = 5;
		int naviCountPerPage = 5;
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<CampingArea> list = campingAreaDAO.selectMainList(conn,currentPage, recordCountPerPage, location);
		
		String pageNavi = campingAreaDAO.getMainPageNavi(conn, naviCountPerPage, recordCountPerPage, currentPage, location);
		
		JDBCTemplate.close(conn);
		
		HashMap<String, Object> hm = new HashMap<String, Object>();

		hm.put("list", list);
		hm.put("pageNavi", pageNavi);
		
		return hm;		

	}

}
