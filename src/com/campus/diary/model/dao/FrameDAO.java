package com.campus.diary.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.campus.common.JDBCTemplate;
import com.campus.diary.model.vo.Frame;

public class FrameDAO {

	public int insertFrameUpload(Connection conn, Frame fr) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "INSERT INTO FRAME VALUES(FRAME_SEQ.NEXTVAL,?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, fr.getUserId());
			pstmt.setString(2, fr.getImageName());
			pstmt.setString(3, fr.getImagePath());
			pstmt.setString(4, fr.getFrameTitle());
			pstmt.setDate(5, fr.getFrameDate());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		
		return result;
	}

	public ArrayList<Frame> selectFrameList(Connection conn, String userId) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Frame> list = new ArrayList<Frame>();
		
		String query = "SELECT * FROM FRAME WHERE USER_ID=? ORDER BY FRAME_DATE DESC";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Frame fr = new Frame();
				fr.setFrameNo(rset.getInt("frame_No"));
				fr.setUserId(rset.getString("user_id"));
				fr.setImageName(rset.getString("image_name"));
				fr.setImagePath(rset.getString("image_path"));
				fr.setFrameTitle(rset.getString("frame_title"));
				fr.setFrameDate(rset.getDate("frame_date"));
				
				list.add(fr);
				
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

	public int deleteFrame(int frameNo, Connection conn) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "DELETE FROM FRAME WHERE FRAME_NO =?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, frameNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

}
