package com.campus.userPage.model.vo;

public class UserWish {
	
	private String businessName;
	private String businessAddr;
	private String campNo;
	private String fileName;
	private String path;
	private String businessAddress;
	private int campPrice;
	
	
	
	
	
	
	public UserWish() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserWish(String businessName, String businessAddr, String campNo, String fileName, String path,
			String businessAddress, int campPrice) {
		super();
		this.businessName = businessName;
		this.businessAddr = businessAddr;
		this.campNo = campNo;
		this.fileName = fileName;
		this.path = path;
		this.businessAddress = businessAddress;
		this.campPrice = campPrice;
	}
	public String getBusinessName() {
		return businessName;
	}
	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}
	public String getBusinessAddr() {
		return businessAddr;
	}
	public void setBusinessAddr(String businessAddr) {
		this.businessAddr = businessAddr;
	}
	public String getCmapNo() {
		return campNo;
	}
	public void setCmapNo(String cmapNo) {
		this.campNo = cmapNo;
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
	public String getBusinessAddress() {
		return businessAddress;
	}
	public void setBusinessAddress(String businessAddress) {
		this.businessAddress = businessAddress;
	}
	public int getCampPrice() {
		return campPrice;
	}
	public void setCampPrice(int campPrice) {
		this.campPrice = campPrice;
	}
	@Override
	public String toString() {
		return "UserWish [businessName=" + businessName + ", businessAddr=" + businessAddr + ", campNo=" + campNo
				+ ", fileName=" + fileName + ", path=" + path + ", businessAddress=" + businessAddress + ", campPrice="
				+ campPrice + "]";
	}
	
	
	

}
