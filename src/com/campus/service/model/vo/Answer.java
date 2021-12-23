package com.campus.service.model.vo;

import java.sql.Date;

public class Answer {
	private int answerNo;
	private int serviceNo;
	private String answerContent;
	private Date answerDate;
	
	
	
	
	@Override
	public String toString() {
		return "Answer [answerNo=" + answerNo + ", serviceNo=" + serviceNo + ", answerContent=" + answerContent
				+ ", answerDate=" + answerDate + "]";
	}
	public Answer(int answerNo, int serviceNo, String answerContent, Date answerDate) {
		super();
		this.answerNo = answerNo;
		this.serviceNo = serviceNo;
		this.answerContent = answerContent;
		this.answerDate = answerDate;
	}
	public Answer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getAnswerNo() {
		return answerNo;
	}
	public void setAnswerNo(int answerNo) {
		this.answerNo = answerNo;
	}
	public int getServiceNo() {
		return serviceNo;
	}
	public void setServiceNo(int serviceNo) {
		this.serviceNo = serviceNo;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	public Date getAnswerDate() {
		return answerDate;
	}
	public void setAnswerDate(Date answerDate) {
		this.answerDate = answerDate;
	}
}
