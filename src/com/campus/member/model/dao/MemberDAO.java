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

	public boolean emailCheck(String email, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		boolean result = false;
		String query = "select * from member where user_email=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, email);
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

	public int memberJoin(Connection conn, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO MEMBER VALUES(M_SEQ.nextval,?,?,?,?,?,?,?,?,SYSDATE,'N')";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPwd());
			pstmt.setString(3, m.getUserName());
			pstmt.setDate(4, m.getUserBirth());
			pstmt.setString(5, m.getUserPhone());
			pstmt.setString(6, m.getUserAddress());
			pstmt.setString(7, m.getUserEmail());
			pstmt.setString(8, String.valueOf(m.getUserGender()));
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	public boolean emailCheckB(String email, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		boolean result = false;
		String query = "select * from business where business_email=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, email);
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

	public boolean idCheckBusiness(String businessId, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		boolean result = false;
		String query = "select * from business where business_id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, businessId);
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

	public int businessJoin(Connection conn, Business b) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO BUSINESS VALUES(BUSINESS_SEQ.nextval,?,?,?,?,?,?,?,SYSDATE,'N','BS')";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, b.getBusinessId());
			pstmt.setString(2, b.getBusinessPwd());
			pstmt.setString(3, b.getBusinessName());
			pstmt.setString(4, b.getBusinessPhone());
			pstmt.setString(5, b.getBusinessAddress());
			pstmt.setString(6, b.getBusinessEmail());
			pstmt.setString(7, b.getBusinessUrl());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	public String businessIdSearchResult(String businessEmail, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String businessId = null;
		String query = "select * from business where business_email=? and business_withdrawal='N'";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, businessEmail);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				businessId = rset.getString("business_id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return businessId;
	}

	public String memberIdSearchResult(String userEmail, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String userId = null;
		String query = "select * from member where user_email=? and user_withdrawal='N'";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userEmail);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				userId = rset.getString("user_id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return userId;
	}

}
