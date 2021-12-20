package com.campus.member.model.vo;

import java.sql.Date;

public class Member {
	
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private Date userBirth;
	private String userPhone;
	private String userAddress;
	private String userEmail;
	private char userGender;
	private Date userJoined;
	private char userWithdrawal;
	
	
	public Member(int userNo, String userId, String userPwd, String userName, Date userBirth, String userPhone,
			String userAddress, String userEmail, char userGender, Date userJoined, char userWithdrawal) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.userEmail = userEmail;
		this.userGender = userGender;
		this.userJoined = userJoined;
		this.userWithdrawal = userWithdrawal;
	}
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Date getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public char getUserGender() {
		return userGender;
	}
	public void setUserGender(char userGender) {
		this.userGender = userGender;
	}
	public Date getUserJoined() {
		return userJoined;
	}
	public void setUserJoined(Date userJoined) {
		this.userJoined = userJoined;
	}
	public char getUserWithdrawal() {
		return userWithdrawal;
	}
	public void setUserWithdrawal(char userWithdrawal) {
		this.userWithdrawal = userWithdrawal;
	}
	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", userBirth=" + userBirth + ", userPhone=" + userPhone + ", userAddress=" + userAddress
				+ ", userEmail=" + userEmail + ", userGender=" + userGender + ", userJoined=" + userJoined
				+ ", userWithdrawal=" + userWithdrawal + "]";
	}
	
	
	
}
