package com.campus.diary.model.vo;

public class Title {
	
	private int diaryTitleNo;
	private String userId;
	private String diaryTitle;
	
	
	
	public Title(String userId, String diaryTitle) {
		super();
		this.userId = userId;
		this.diaryTitle = diaryTitle;
	}
	public Title() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Title(int diaryTitleNo, String userId, String diaryTitle) {
		super();
		this.diaryTitleNo = diaryTitleNo;
		this.userId = userId;
		this.diaryTitle = diaryTitle;
	}
	public int getDiaryTitleNo() {
		return diaryTitleNo;
	}
	public void setDiaryTitleNo(int diaryTitleNo) {
		this.diaryTitleNo = diaryTitleNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getDiaryTitle() {
		return diaryTitle;
	}
	public void setDiaryTitle(String diaryTitle) {
		this.diaryTitle = diaryTitle;
	}
	@Override
	public String toString() {
		return "Title [diaryTitleNo=" + diaryTitleNo + ", userId=" + userId + ", diaryTitle=" + diaryTitle + "]";
	}

	
	
	
}
