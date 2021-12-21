package com.campus.member.model.service;

import java.sql.Connection;

import com.campus.common.JDBCTemplate;
import com.campus.member.model.dao.MemberDAO;
import com.campus.member.model.vo.Business;
import com.campus.member.model.vo.Member;

public class MemberServiceImpl implements MemberService{
	
	private MemberDAO mDAO = new MemberDAO();
	
	@Override
	public Member loginMember(String userId, String userPwd) {
		Connection conn = new JDBCTemplate().getConnection();
		Member m = mDAO.loginMember(userId,userPwd,conn);
		JDBCTemplate.close(conn);
		
		return m;
	}

	@Override
	public Business loginBusiness(String businessId, String businessPwd) {
		Connection conn = new JDBCTemplate().getConnection();
		Business b = mDAO.loginBusiness(businessId,businessPwd,conn);
		JDBCTemplate.close(conn);
		
		return b;
	}

	@Override
	public boolean idCheck(String userId) {
		Connection conn = JDBCTemplate.getConnection();
		boolean result = mDAO.idCheck(userId,conn);
		JDBCTemplate.close(conn);
		
		return result;
	}

	@Override
	public boolean emailCheck(String email) {
		Connection conn = JDBCTemplate.getConnection();
		boolean result = mDAO.emailCheck(email,conn);
		JDBCTemplate.close(conn);
		return result;
	}

	@Override
	public int memberJoin(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		int result = mDAO.memberJoin(conn,m);
		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		
		return result;
	}

	@Override
	public boolean emailCheckB(String email) {
		Connection conn = JDBCTemplate.getConnection();
		boolean result = mDAO.emailCheckB(email,conn);
		JDBCTemplate.close(conn);
		return result;
	}

	@Override
	public boolean idCheckBusiness(String businessId) {
		Connection conn = JDBCTemplate.getConnection();
		boolean result = mDAO.idCheckBusiness(businessId,conn);
		JDBCTemplate.close(conn);
		
		return result;
	}

	@Override
	public int businessJoin(Business b) {
		Connection conn = JDBCTemplate.getConnection();
		int result = mDAO.businessJoin(conn,b);
		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		
		return result;
	}

	@Override
	public String businessIdSearchResult(String businessEmail) {
		Connection conn = JDBCTemplate.getConnection();
		String businessId = mDAO.businessIdSearchResult(businessEmail,conn);
		JDBCTemplate.close(conn);
		
		return businessId;
	}

	@Override
	public String userIdSearchResult(String userEmail) {
		Connection conn = JDBCTemplate.getConnection();
		String userId = mDAO.memberIdSearchResult(userEmail,conn);
		JDBCTemplate.close(conn);
		
		return userId;
	}

}
