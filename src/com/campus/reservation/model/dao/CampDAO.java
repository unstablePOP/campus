package com.campus.reservation.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.campus.common.JDBCTemplate;
import com.campus.reservation.model.vo.Camp;

public class CampDAO {

	public ArrayList<Camp> selectAllCampPageList(Connection conn, int currentPage, int recordCountPerPage) {		
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Camp> list = new ArrayList<Camp>();
		
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		int end = currentPage * recordCountPerPage;
		
		
		//쿼리구문 수정 필요
		String query = " SELECT * " + 
				"		 FROM CAMP WHERE EMPTY = 'Y'";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rset = pstmt.executeQuery();			
		//사업자 이름 추가
			while(rset.next())
			{
				Camp camp = new Camp();

				camp.setBusinessNo(rset.getInt("businessNo"));
				camp.setCampNo(rset.getString("campNo"));
				camp.setCampName(rset.getString("campName"));
				camp.setCampType(rset.getString("campType"));
				camp.setCmapPo(rset.getInt("campPo"));
				camp.setCampMaxPo(rset.getInt("campMaxPo"));
				camp.setCampPrice(rset.getInt("campPrice"));
				camp.setCheckIn(rset.getInt("checkIn"));
				camp.setCheckOut(rset.getInt("checkOut"));
				camp.setReserveNotice(rset.getString("reservNotice"));
				camp.setReservInfo(rset.getString("reservInfo"));
				camp.setRegDate(rset.getDate("regDate"));

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

}
