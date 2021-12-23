package com.campus.reservation.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.campus.common.JDBCTemplate;
import com.campus.reservation.model.dao.campingAreaDAO;
import com.campus.reservation.model.vo.CampingArea;

public class CampingAreaServiceImpl implements CampingAreaService{

	@Override
	public HashMap<String, Object> selectAllList(int currentPage) {

		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage = 5;
		ArrayList<CampingArea> list = campingAreaDAO.selectAllList(conn, currentPage, recordCountPerPage);

		int naviCountPerPage = 5;
		String pageNavi = campingAreaDAO.getPageNavi(conn, naviCountPerPage, recordCountPerPage, currentPage);
		
		JDBCTemplate.close(conn);
		
		HashMap<String, Object> hm = new HashMap<String, Object>();
		hm.put("list", list);
		hm.put("pageNavi", pageNavi);
		
		return hm;		

	}

}
