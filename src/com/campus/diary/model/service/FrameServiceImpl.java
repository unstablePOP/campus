package com.campus.diary.model.service;

import java.sql.Connection;

import com.campus.common.JDBCTemplate;
import com.campus.diary.model.dao.FrameDAO;
import com.campus.diary.model.vo.Frame;

public class FrameServiceImpl implements FrameService{

	private FrameDAO frDAO = new FrameDAO();
	
	@Override
	public int insertFrameUpload(Frame fr) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = frDAO.insertFrameUpload(conn,fr);
		
		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);
		
		return result;
	}

}
