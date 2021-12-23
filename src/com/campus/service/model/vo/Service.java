package com.campus.service.model.vo;

import java.sql.Date;

public class Service {
	private int serviceNo;
	private String userId;
	private String serviceType;
	private String serviceSubject;
	private String serviceContent;
	private String serviceEmail;
	private Date serviceDate;
	private char serviceDelYN;
	private char serviceAnswer;
	
	

	public Service(String userId, String serviceType, String serviceSubject, String serviceContent,
			String serviceEmail) {
		super();
		this.userId = userId;
		this.serviceType = serviceType;
		this.serviceSubject = serviceSubject;
		this.serviceContent = serviceContent;
		this.serviceEmail = serviceEmail;
	}
	public Service(int serviceNo, String userId, String serviceType, String serviceSubject, String serviceContent,
			String serviceEmail, Date serviceDate, char serviceDelYN) {
		super();
		this.serviceNo = serviceNo;
		this.userId = userId;
		this.serviceType = serviceType;
		this.serviceSubject = serviceSubject;
		this.serviceContent = serviceContent;
		this.serviceEmail = serviceEmail;
		this.serviceDate = serviceDate;
		this.serviceDelYN = serviceDelYN;
	}
	public Service() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public char getServiceAnswer() {
		return serviceAnswer;
	}
	public void setServiceAnswer(char serviceAnswer) {
		this.serviceAnswer = serviceAnswer;
	}
	public int getServiceNo() {
		return serviceNo;
	}
	public void setServiceNo(int serviceNo) {
		this.serviceNo = serviceNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getServiceType() {
		return serviceType;
	}
	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}
	public String getServiceSubject() {
		return serviceSubject;
	}
	public void setServiceSubject(String serviceSubject) {
		this.serviceSubject = serviceSubject;
	}
	public String getServiceContent() {
		return serviceContent;
	}
	public void setServiceContent(String serviceContent) {
		this.serviceContent = serviceContent;
	}
	public String getServiceEmail() {
		return serviceEmail;
	}
	public void setServiceEmail(String serviceEmail) {
		this.serviceEmail = serviceEmail;
	}
	public Date getServiceDate() {
		return serviceDate;
	}
	public void setServiceDate(Date serviceDate) {
		this.serviceDate = serviceDate;
	}
	public char getServiceDelYN() {
		return serviceDelYN;
	}
	public void setServiceDelYN(char serviceDelYN) {
		this.serviceDelYN = serviceDelYN;
	}
	@Override
	public String toString() {
		return "Service [serviceNo=" + serviceNo + ", userId=" + userId + ", serviceType=" + serviceType
				+ ", serviceSubject=" + serviceSubject + ", serviceContent=" + serviceContent + ", serviceEmail="
				+ serviceEmail + ", serviceDate=" + serviceDate + ", serviceDelYN=" + serviceDelYN + "]";
	}
}
