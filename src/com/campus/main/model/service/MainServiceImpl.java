package com.campus.main.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.campus.common.JDBCTemplate;
import com.campus.main.model.dao.MainDAO;
import com.campus.main.model.vo.Free;
import com.campus.main.model.vo.Notice;

public class MainServiceImpl implements MainService{
	
	private MainDAO mDAO = new MainDAO();
	
	@Override
	public ArrayList<Free> freeData() {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Free> freeList = mDAO.freeData(conn);
		for(Free f : freeList) {
			f.setCommentCount(mDAO.freeCount(f.getFreeNo(),conn));
		}
		JDBCTemplate.close(conn);
		return freeList;
	}

	@Override
	public ArrayList<Notice> noticeData() {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Notice> noticeList = mDAO.noticeData(conn);
		JDBCTemplate.close(conn);
		return noticeList;
	}

}
