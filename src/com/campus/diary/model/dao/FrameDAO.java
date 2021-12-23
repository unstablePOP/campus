package com.campus.diary.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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

}
