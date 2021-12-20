package com.campus.member.model.vo;

import java.sql.Date;

public class Business {
	private int businessNo;
	private String businessId;
	private String businessPwd;
	private String businessName;
	private String businessPhone;
	private String businessAddress;
	private String businessEmail;
	private String businessUrl;
	private Date businessJoined;
	private char businessWithDrawal;
	private String rating;
	
	public Business(int businessNo, String businessId, String businessPwd, String businessName, String businessPhone,
			String businessAddress, String businessEmail, String businessUrl, Date businessJoined,
			char businessWithDrawal, String rating) {
		super();
		this.businessNo = businessNo;
		this.businessId = businessId;
		this.businessPwd = businessPwd;
		this.businessName = businessName;
		this.businessPhone = businessPhone;
		this.businessAddress = businessAddress;
		this.businessEmail = businessEmail;
		this.businessUrl = businessUrl;
		this.businessJoined = businessJoined;
		this.businessWithDrawal = businessWithDrawal;
		this.rating = rating;
	}
	public Business() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getBusinessNo() {
		return businessNo;
	}
	public void setBusinessNo(int businessNo) {
		this.businessNo = businessNo;
	}
	public String getBusinessId() {
		return businessId;
	}
	public void setBusinessId(String businessId) {
		this.businessId = businessId;
	}
	public String getBusinessPwd() {
		return businessPwd;
	}
	public void setBusinessPwd(String businessPwd) {
		this.businessPwd = businessPwd;
	}
	public String getBusinessName() {
		return businessName;
	}
	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}
	public String getBusinessPhone() {
		return businessPhone;
	}
	public void setBusinessPhone(String businessPhone) {
		this.businessPhone = businessPhone;
	}
	public String getBusinessAddress() {
		return businessAddress;
	}
	public void setBusinessAddress(String businessAddress) {
		this.businessAddress = businessAddress;
	}
	public String getBusinessEmail() {
		return businessEmail;
	}
	public void setBusinessEmail(String businessEmail) {
		this.businessEmail = businessEmail;
	}
	public String getBusinessUrl() {
		return businessUrl;
	}
	public void setBusinessUrl(String businessUrl) {
		this.businessUrl = businessUrl;
	}
	public Date getBusinessJoined() {
		return businessJoined;
	}
	public void setBusinessJoined(Date businessJoined) {
		this.businessJoined = businessJoined;
	}
	public char getBusinessWithDrawal() {
		return businessWithDrawal;
	}
	public void setBusinessWithDrawal(char businessWithDrawal) {
		this.businessWithDrawal = businessWithDrawal;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	@Override
	public String toString() {
		return "Business [businessNo=" + businessNo + ", businessId=" + businessId + ", businessPwd=" + businessPwd
				+ ", businessName=" + businessName + ", businessPhone=" + businessPhone + ", businessAddress="
				+ businessAddress + ", businessEmail=" + businessEmail + ", businessUrl=" + businessUrl
				+ ", businessJoined=" + businessJoined + ", businessWithDrawal=" + businessWithDrawal + ", rating="
				+ rating + "]";
	}
	
	
	
}
