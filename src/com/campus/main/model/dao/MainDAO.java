package com.campus.main.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.campus.common.JDBCTemplate;
import com.campus.main.model.vo.Free;
import com.campus.main.model.vo.Notice;

public class MainDAO {

	public ArrayList<Free> freeData(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Free> freeList = new ArrayList<Free>();
		String query = "select * from (select row_number() over (order by free_no desc) as num, freeboard.* from freeboard where free_withdrawal='N') " + 
				"where num between 1 and 8";
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Free f = new Free();
				f.setFreeNo(rset.getInt("free_no"));
				f.setFreeTitle(rset.getString("free_title"));
				freeList.add(f);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return freeList;
	}

	public int freeCount(int freeNo,Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int freeCount = 0;
		String query = "select freeboard.free_no,freeboard.free_title,count(freecomment.free_no) as count from freeboard " + 
				"left join freecomment on (freeboard.free_no=freecomment.free_no) group by freeboard.free_no,freeboard.free_title having freeboard.free_no=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, freeNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				freeCount = rset.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return freeCount;
	}

	public ArrayList<Notice> noticeData(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Notice> noticeList = new ArrayList<Notice>();
		String query = "select * from (select row_number() over (order by notice_no desc) as num, noticeboard.* from noticeboard where notice_withdrawal='N') " + 
				"where num between 1 and 8";
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Notice n = new Notice();
				n.setNoticeNo(rset.getInt("notice_no"));
				n.setNoticeTitle(rset.getString("notice_title"));
				noticeList.add(n);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return noticeList;
	}

}
