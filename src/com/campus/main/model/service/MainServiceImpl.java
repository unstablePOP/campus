package com.campus.main.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.campus.common.JDBCTemplate;
import com.campus.main.model.dao.MainDAO;
import com.campus.main.model.vo.Free;

public class MainServiceImpl implements MainService{
	
	private MainDAO mDAO = new MainDAO();
	
	@Override
	public ArrayList<Free> freeData() {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Free> f = mDAO.freeData(conn);
		return null;
	}

}
