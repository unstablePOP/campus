package com.campus.main.model.vo;

public class Free {
	private int FreeNo;
	private String FreeTitle;
	private int commentCount;
	
	
	
	public Free(int freeNo, String freeTitle, int commentCount) {
		super();
		FreeNo = freeNo;
		FreeTitle = freeTitle;
		this.commentCount = commentCount;
	}
	public Free() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getFreeNo() {
		return FreeNo;
	}
	public void setFreeNo(int freeNo) {
		FreeNo = freeNo;
	}
	public String getFreeTitle() {
		return FreeTitle;
	}
	public void setFreeTitle(String freeTitle) {
		FreeTitle = freeTitle;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	
}
