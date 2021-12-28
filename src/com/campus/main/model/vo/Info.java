package com.campus.main.model.vo;

public class Info {
	private int infoNo;
	private String infoTitle;
	private int infoCount;
	
	public Info(int infoNo, String infoTitle, int infoCount) {
		super();
		this.infoNo = infoNo;
		this.infoTitle = infoTitle;
		this.infoCount = infoCount;
	}
	public Info() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getInfoNo() {
		return infoNo;
	}
	public void setInfoNo(int infoNo) {
		this.infoNo = infoNo;
	}
	public String getInfoTitle() {
		return infoTitle;
	}
	public void setInfoTitle(String infoTitle) {
		this.infoTitle = infoTitle;
	}
	public int getInfoCount() {
		return infoCount;
	}
	public void setInfoCount(int infoCount) {
		this.infoCount = infoCount;
	}
	
	
}
