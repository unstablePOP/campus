package com.campus.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReservationYN {

	public static void main(String[] args) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "UPDATE RESERVATION SET END_YN='Y' WHERE TO_DATE(RESERV_END)<TO_DATE(SYSDATE)";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@khds-b1.iptime.org:21521:xe", "campus", "123123");
			pstmt = conn.prepareStatement(query);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		System.out.println(result+"개의 행을 업데이트하였습니다.");
	}

}
