package com.campus.diary.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.campus.common.JDBCTemplate;
import com.campus.diary.model.dao.DiaryDAO;
import com.campus.diary.model.vo.Background;
import com.campus.diary.model.vo.Frame;
import com.campus.diary.model.vo.Title;
import com.campus.member.model.vo.Member;

public class DiaryServiceImpl implements DiaryService{

	private DiaryDAO dDAO = new DiaryDAO();
	
	@Override
	public int insertFrameUpload(Frame fr) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = dDAO.insertFrameUpload(conn,fr);
		
		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);
		
		return result;
	}

	@Override
	public ArrayList<Frame> selectFrameList(String userId) {
		
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Frame> list = dDAO.selectFrameList(conn,userId);
		JDBCTemplate.close(conn);
		
		
		return list;
	}

	@Override
	public int deleteFrame(int frameNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		int result = dDAO.deleteFrame(frameNo, conn);
		
		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);
		
		
		return result;
	}

	@Override
	public int updateTitle(Title t) {
		
		Connection conn = JDBCTemplate.getConnection();
		int result = dDAO.updateTitle(t, conn);

		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);
		
		
		return result;
	}

	@Override
	public Title selectTitle(String userId) {
		Connection conn = JDBCTemplate.getConnection();
		Title title = dDAO.selectTitle(userId, conn);
		
		JDBCTemplate.close(conn);
		
		
		return title;
	}

	@Override
	public int updateBackground(Background bg) {
		
		Connection conn = JDBCTemplate.getConnection();
		int result = dDAO.updateBackground(bg, conn);

		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);
		
		
		return result;
	}

	@Override
	public Background selectBackground(String userId) {
		
		Connection conn = JDBCTemplate.getConnection();
		Background back= dDAO.selectBackground(userId, conn);
		
		JDBCTemplate.close(conn);
		
		
		return back;
	}

	

}
