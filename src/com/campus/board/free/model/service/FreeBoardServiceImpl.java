package com.campus.board.free.model.service;

import java.sql.Connection;

import com.campus.board.free.model.dao.FreeBoardDAO;
import com.campus.board.free.model.vo.FreeBoard;
import com.campus.board.free.model.vo.FreePage;
import com.campus.common.JDBCTemplate;

public class FreeBoardServiceImpl implements FreeBoardService{
	
	private FreeBoardDAO fbDAO = new FreeBoardDAO();
	
	public FreePage freeboardListAll(int currentPage) {
		Connection conn = JDBCTemplate.getConnection();
		
		FreePage page=new FreePage();
		
		int perPage=15;
		page.setPageList(fbDAO.freeboardListAll(conn,currentPage,perPage));
		
		int naviPage=5;
		page.setPageNavi(fbDAO.getPageNavi(conn,currentPage,perPage,naviPage));
		
		JDBCTemplate.close(conn);
		
		return page;
	}

	@Override
	public FreeBoard freeboardSelectOne(int freeNo) {
		Connection conn = JDBCTemplate.getConnection();
		FreeBoard freeBoard = fbDAO.freeboardSelectOne(conn, freeNo);
		JDBCTemplate.close(conn);
		return freeBoard;
	}

	@Override
	public int update(FreeBoard freeBoard) {
		Connection conn = JDBCTemplate.getConnection();
		int result = fbDAO.update(freeBoard, conn);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}
		else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	@Override
	public int delete(int freeNo, String userId) {
		Connection conn = JDBCTemplate.getConnection();
		int result = fbDAO.delete(freeNo,userId, conn);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}
		else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	@Override
	public int insert(FreeBoard freeBoard) {
		Connection conn = JDBCTemplate.getConnection();
		int result = fbDAO.insert(freeBoard, conn);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}
		else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	@Override
	public FreePage search(String type, String keyword, int currentPage) {
		Connection conn = JDBCTemplate.getConnection();
		
		FreePage page = new FreePage();
		
		int perPage = 15;
		page.setPageList(fbDAO.search(conn,currentPage,perPage, type, keyword));
		
		int naviPage = 5;
		page.setPageNavi(fbDAO.searchNavi(conn,currentPage,perPage,naviPage, keyword, type));
		
		JDBCTemplate.close(conn);
		return page;
	}
}
