package com.campus.userPage.model.vo;

public class UserReservation {
	
	private String businessName;
	private String campNo;
	private String campType;
	private int reservSta;
	private int reservEnd;
	private String checkin;
	private String checkout;
	private String userId;
	private String reservNo;
	private String businessAddress;
	private String fileName;
	private String path;
	
	
	
	
	
	public UserReservation() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserReservation(String businessName, String campNo, String campType, int reservSta, int reservEnd,
			String checkin, String checkout, String userId, String reservNo, String businessAddress, String fileName,
			String path) {
		super();
		this.businessName = businessName;
		this.campNo = campNo;
		this.campType = campType;
		this.reservSta = reservSta;
		this.reservEnd = reservEnd;
		this.checkin = checkin;
		this.checkout = checkout;
		this.userId = userId;
		this.reservNo = reservNo;
		this.businessAddress = businessAddress;
		this.fileName = fileName;
		this.path = path;
	}
	public String getBusinessName() {
		return businessName;
	}
	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}
	public String getCampNo() {
		return campNo;
	}
	public void setCampNo(String campNo) {
		this.campNo = campNo;
	}
	public String getCampType() {
		return campType;
	}
	public void setCampType(String campType) {
		this.campType = campType;
	}
	public int getReservSta() {
		return reservSta;
	}
	public void setReservSta(int reservSta) {
		this.reservSta = reservSta;
	}
	public int getReservEnd() {
		return reservEnd;
	}
	public void setReservEnd(int reservEnd) {
		this.reservEnd = reservEnd;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getReservNo() {
		return reservNo;
	}
	public void setReservNo(String reservNo) {
		this.reservNo = reservNo;
	}
	public String getBusinessAddress() {
		return businessAddress;
	}
	public void setBusinessAddress(String businessAddress) {
		this.businessAddress = businessAddress;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	@Override
	public String toString() {
		return "UserReservation [businessName=" + businessName + ", campNo=" + campNo + ", campType=" + campType
				+ ", reservSta=" + reservSta + ", reservEnd=" + reservEnd + ", checkin=" + checkin + ", checkout="
				+ checkout + ", userId=" + userId + ", reservNo=" + reservNo + ", businessAddress=" + businessAddress
				+ ", fileName=" + fileName + ", path=" + path + "]";
	}
	

	
	
}
