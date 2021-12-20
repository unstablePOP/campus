package com.campus.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.campus.common.JDBCTemplate;
import com.campus.member.model.vo.Business;
import com.campus.member.model.vo.Member;

public class MemberDAO {

	public Member loginMember(String userId, String userPwd, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member m = null;
		String query = "select * from member where user_id=? and user_pwd=? and user_withdrawal='N'";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			rset = pstmt.executeQuery();
			if(rset.next()) {
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
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return m;
	}

	public Business loginBusiness(String businessId, String businessPwd, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Business b = null;
		String query = "select * from business where business_id=? and business_pwd=? and business_withdrawal='N'";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, businessId);
			pstmt.setString(2, businessPwd);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				b = new Business();
				b.setBusinessNo(rset.getInt("business_no"));
				b.setBusinessId(rset.getString("business_id"));
				b.setBusinessPwd(rset.getString("business_pwd"));
				b.setBusinessName(rset.getString("business_name"));
				b.setBusinessPhone(rset.getString("business_phone"));
				b.setBusinessAddress(rset.getString("business_address"));
				b.setBusinessEmail(rset.getString("business_email"));
				b.setBusinessUrl(rset.getString("business_url"));
				b.setBusinessJoined(rset.getDate("business_joined"));
				b.setBusinessWithDrawal(rset.getString("business_withdrawal").charAt(0));
				b.setRating(rset.getString("rating"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return b;
	}

	public boolean idCheck(String userId, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		boolean result = false;
		String query = "select * from member where user_id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			if(rset.next()) result = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

}
