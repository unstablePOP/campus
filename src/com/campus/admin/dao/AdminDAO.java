package com.campus.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.campus.board.free.model.vo.FreeBoard;
import com.campus.common.JDBCTemplate;
import com.campus.service.model.vo.Service;

public class AdminDAO {

	public ArrayList<FreeBoard> freeList(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<FreeBoard> list = new ArrayList<FreeBoard>();
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		int end = currentPage * recordCountPerPage;
		
		String query="SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY FREE_NO DESC) AS NUM, FREEBOARD.* "
				+ "FROM FREEBOARD) WHERE NUM BETWEEN ? AND ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				FreeBoard f = new FreeBoard();
				f.setFreeNo(rset.getInt("free_no"));
				f.setFreeTitle(rset.getString("free_title"));
				f.setFreeDate(rset.getDate("free_date"));
				f.setFreeWithdrawal(rset.getString("free_withdrawal").charAt(0));
				list.add(f);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}

	public String getAdminPageNavi(Connection conn, int naviCountPerPage, int currentPage, int recordCountPerPage) {
		int recordTotalCount = totalCount(conn);
		
		int pageTotalCount = (int)Math.ceil(recordTotalCount/(double)recordCountPerPage);
		
		int startNavi = (((currentPage-1) / naviCountPerPage) * naviCountPerPage) + 1;
		int endNavi = startNavi + (naviCountPerPage-1);
		
		if(endNavi>pageTotalCount) {
			endNavi = pageTotalCount;
		}
		
		StringBuilder sb = new StringBuilder();
		if(startNavi!=1) {
			sb.append("<a href='/admin/freeList.do?currentPage="+(startNavi-1)+"'>< prev</a> ");
		}
		for(int i = startNavi; i<=endNavi; i++) {
			if(i==currentPage) {
				sb.append("<a class='navi' id='focusNavi' href='/admin/freeList.do?currentPage="+i+"'><B style='font-siez:1.4em; color:#ff5000;'>"+i+"</B></a> ");
			}else {
				sb.append("<a class='navi' href='/admin/freeList.do?currentPage="+i+"'>"+i+"</a> ");
			}
		}
		if(endNavi!=pageTotalCount) {
			sb.append(" <a href='/admin/freeList.do?currentPage="+(endNavi+1)+"'>next ></a>");
		}
		
		return sb.toString();
	}
	
	private int totalCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int count = 0;
		String query = "SELECT COUNT(*) AS count FROM FREEBOARD";
		try {
			pstmt=conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				count = rset.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return count;
	}
}
