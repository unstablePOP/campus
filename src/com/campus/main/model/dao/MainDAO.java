package com.campus.main.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.campus.main.model.vo.Free;

public class MainDAO {

	public ArrayList<Free> freeData(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Free> freeList = new ArrayList<Free>();
		String query = "select *, from (select row_number() over (order by free_no desc) as num, freeboard.* from freeboard where free_withdrawal='N') " + 
				"where num between 1 and 8";
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Free f = new Free();
				f.setFreeNo(rset.getInt("num"));
				f.setFreeTitle(rset.getString("free_title"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}
