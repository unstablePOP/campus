package com.campus.diary.model.vo;

public class Background {
	
	private int diaryBackNo;
	private String userId;
	private String diaryBackName;
	private String diaryBackPath;
	
	
	
	
	public Background(String userId, String diaryBackName, String diaryBackPath) {
		super();
		this.userId = userId;
		this.diaryBackName = diaryBackName;
		this.diaryBackPath = diaryBackPath;
	}
	public Background() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Background(int diaryBackNo, String userId, String diaryBackName, String diaryBackPath) {
		super();
		this.diaryBackNo = diaryBackNo;
		this.userId = userId;
		this.diaryBackName = diaryBackName;
		this.diaryBackPath = diaryBackPath;
	}
	public int getDiaryBackNo() {
		return diaryBackNo;
	}
	public void setDiaryBackNo(int diaryBackNo) {
		this.diaryBackNo = diaryBackNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getDiaryBackName() {
		return diaryBackName;
	}
	public void setDiaryBackName(String diaryBackName) {
		this.diaryBackName = diaryBackName;
	}
	public String getDiaryBackPath() {
		return diaryBackPath;
	}
	public void setDiaryBackPath(String diaryBackPath) {
		this.diaryBackPath = diaryBackPath;
	}
	@Override
	public String toString() {
		return "Background [diaryBackNo=" + diaryBackNo + ", userId=" + userId + ", diaryBackName=" + diaryBackName
				+ ", diaryBackPath=" + diaryBackPath + "]";
	}
	
	

}
