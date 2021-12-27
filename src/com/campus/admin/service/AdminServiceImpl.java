package com.campus.admin.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.campus.admin.dao.AdminDAO;
import com.campus.board.free.model.vo.FreeBoard;
import com.campus.common.JDBCTemplate;

public class AdminServiceImpl implements AdminService {

	private AdminDAO aDAO = new AdminDAO();
	
	@Override
	public HashMap<String, Object> freeList(int currentPage) {
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage = 10;
		ArrayList<FreeBoard> list = aDAO.freeList(conn,currentPage,recordCountPerPage);
		int naviCountPerPage = 5;
		String pageNavi = aDAO.getAdminPageNavi(conn,naviCountPerPage,currentPage,recordCountPerPage);
		JDBCTemplate.close(conn);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("pageNavi", pageNavi);
		
		return map;
	}

}
