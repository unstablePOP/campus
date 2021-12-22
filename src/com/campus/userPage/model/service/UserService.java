package com.campus.userPage.model.service;

import com.campus.member.model.vo.Member;

public interface UserService {

	
	/**
	 * 작성자 : yeonhee
	 * @param userId
	 * @param userPwd
	 * @return Member
	 * 작성일 : 2021. 12. 21.
	 * 
	 * Descriptrion : 회원 1명 정보 (비밀번호 체크)
	 */
	Member pwdCheck(String userId, String userPwd);

	/**
	 * 작성자 : yeonhee
	 * @param m
	 * @return int
	 * 작성일 : 2021. 12. 22.
	 * 
	 * Descriptrion : 회원 정보 수정
	 */
	int updateOneMember(Member m);

	/**
	 * 작성자 : yeonhee
	 * @param userNo
	 * @return int
	 * 작성일 : 2021. 12. 22.
	 * 
	 * Descriptrion : userNo 받아서 회원 탈퇴 처리
	 */
	int deleteOneMember(int userNo);

}
