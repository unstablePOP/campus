package com.campus.main.model.vo;

public class Notice {
	private int noticeNo;
	private String noticeTitle;
	private int noticeCount;
	
	
	
	public Notice(int noticeNo, String noticeTitle, int noticeCount) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeCount = noticeCount;
	}
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public int getNoticeCount() {
		return noticeCount;
	}
	public void setNoticeCount(int noticeCount) {
		this.noticeCount = noticeCount;
	}
	
	
}
