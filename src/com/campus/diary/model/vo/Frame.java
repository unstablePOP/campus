package com.campus.diary.model.vo;

import java.sql.Date;

public class Frame {
	
	private int frameNo;		// 프레임 번호
	private String userId;		// 사용자 ID
	private String imageName;	// 이미지명
	private String imagePath;	// 이미지경로
	private String frameTitle;	// 제목
	private Date frameDate;		// 프레임날짜
	
	
	
	public Frame() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Frame(int frameNo, String userId, String imageName, String imagePath, String frameTitle, Date frameDate) {
		super();
		this.frameNo = frameNo;
		this.userId = userId;
		this.imageName = imageName;
		this.imagePath = imagePath;
		this.frameTitle = frameTitle;
		this.frameDate = frameDate;
	}
	public int getFrameNo() {
		return frameNo;
	}
	public void setFrameNo(int frameNo) {
		this.frameNo = frameNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getFrameTitle() {
		return frameTitle;
	}
	public void setFrameTitle(String frameTitle) {
		this.frameTitle = frameTitle;
	}
	public Date getFrameDate() {
		return frameDate;
	}
	public void setFrameDate(Date frameDate) {
		this.frameDate = frameDate;
	}
	@Override
	public String toString() {
		return "Frame [frameNo=" + frameNo + ", userId=" + userId + ", imageName=" + imageName + ", imagePath="
				+ imagePath + ", frameTitle=" + frameTitle + ", frameDate=" + frameDate + "]";
	}
	
	
	
	
	
	
	

}
