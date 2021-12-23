package com.campus.reservation.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.campus.common.JDBCTemplate;
import com.campus.reservation.model.vo.CampingArea;

public class campingAreaDAO {

	public static ArrayList<CampingArea> selectAllList(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<CampingArea> list = new ArrayList<CampingArea>();
		
		String query ="select * FROM CAMP";
		
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
		while(rset.next())
		{
			CampingArea campingArea = new CampingArea();
			
			
			list.add(campingArea);
		}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}

	
	public static String getPageNavi(Connection conn, int naviCountPerPage, int recordCountPerPage, int currentPage) {

	
		
		
		
		
		
		return null;
	}

}
