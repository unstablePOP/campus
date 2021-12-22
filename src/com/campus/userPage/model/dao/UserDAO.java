package com.campus.userPage.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.campus.common.JDBCTemplate;
import com.campus.member.model.vo.Member;

public class UserDAO {

	public Member pwdCheck(String userId, String userPwd, Connection conn) {
		
		PreparedStatement pstmt = null;
		Member m = null;
		ResultSet rset = null;
		
		String query = "SELECT * FROM MEMBER WHERE USER_ID=? AND USER_PWD=? AND USER_WITHDRAWAL='N'";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next())
			{
				m = new Member();
				m.setUserNo(rset.getInt("user_no"));
				m.setUserId(rset.getString("user_id"));
				m.setUserPwd(rset.getString("user_pwd"));
				m.setUserName(rset.getString("user_name"));
				m.setUserBirth(rset.getDate("user_birth"));
				m.setUserPhone(rset.getString("user_phone"));
				m.setUserAddress(rset.getString("user_address"));
				m.setUserEmail(rset.getString("user_email"));
				m.setUserGender(rset.getString("user_gender").charAt(0));
				m.setUserJoined(rset.getDate("user_joined"));
				m.setUserWithdrawal(rset.getString("user_withdrawal").charAt(0));
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return m;
	}

	public int updateOneMember(Member m, Connection conn) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query ="UPDATE MEMBER " + 
						"SET USER_PWD=?, USER_PHONE=?, USER_ADDRESS=? " + 
						"WHERE USER_ID=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, m.getUserPwd());
			pstmt.setString(2, m.getUserPhone());
			pstmt.setString(3, m.getUserAddress());
			pstmt.setString(4, m.getUserId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		
		
		return result;
	}

}
