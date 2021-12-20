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

}
