package com.campus.member.model.service;

import com.campus.member.model.vo.Business;
import com.campus.member.model.vo.Member;

public interface MemberService {

	Member loginMember(String userId, String userPwd);

	Business loginBusiness(String businessId, String businessPwd);

}
