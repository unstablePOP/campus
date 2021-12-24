package com.campus.diary.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.campus.common.JDBCTemplate;
import com.campus.diary.model.dao.FrameDAO;
import com.campus.diary.model.vo.Frame;
import com.campus.member.model.vo.Member;

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

	@Override
	public ArrayList<Frame> selectFrameList(String userId) {
		
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Frame> list = frDAO.selectFrameList(conn,userId);
		JDBCTemplate.close(conn);
		
		
		return list;
	}

	@Override
	public int deleteFrame(int frameNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		int result = frDAO.deleteFrame(frameNo, conn);
		
		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);
		
		
		return result;
	}

}
