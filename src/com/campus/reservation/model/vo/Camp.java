package com.campus.reservation.model.vo;

import java.sql.Date;

public class Camp {

	private int businessNo;
	private String campNo;
	private String campName;
	private String campType;
	private int cmapPo;
	private int campMaxPo;
	private int campPrice;
	private int checkIn;
	private int checkOut;
	private String reserveNotice;
	private String reservInfo;
	private Date regDate;
	private char empty;
	
	
	public Camp() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Camp(int businessNo, String campNo, String campName, String campType, int cmapPo, int campMaxPo,
			int campPrice, int checkIn, int checkOut, String reserveNotice, String reservInfo, Date regDate,
			char empty) {
		super();
		this.businessNo = businessNo;
		this.campNo = campNo;
		this.campName = campName;
		this.campType = campType;
		this.cmapPo = cmapPo;
		this.campMaxPo = campMaxPo;
		this.campPrice = campPrice;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.reserveNotice = reserveNotice;
		this.reservInfo = reservInfo;
		this.regDate = regDate;
		this.empty = empty;
	}
	
	
	public int getBusinessNo() {
		return businessNo;
	}
	public void setBusinessNo(int businessNo) {
		this.businessNo = businessNo;
	}
	public String getCampNo() {
		return campNo;
	}
	public void setCampNo(String campNo) {
		this.campNo = campNo;
	}
	public String getCampName() {
		return campName;
	}
	public void setCampName(String campName) {
		this.campName = campName;
	}
	public String getCampType() {
		return campType;
	}
	public void setCampType(String campType) {
		this.campType = campType;
	}
	public int getCmapPo() {
		return cmapPo;
	}
	public void setCmapPo(int cmapPo) {
		this.cmapPo = cmapPo;
	}
	public int getCampMaxPo() {
		return campMaxPo;
	}
	public void setCampMaxPo(int campMaxPo) {
		this.campMaxPo = campMaxPo;
	}
	public int getCampPrice() {
		return campPrice;
	}
	public void setCampPrice(int campPrice) {
		this.campPrice = campPrice;
	}
	public int getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(int checkIn) {
		this.checkIn = checkIn;
	}
	public int getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(int checkOut) {
		this.checkOut = checkOut;
	}
	public String getReserveNotice() {
		return reserveNotice;
	}
	public void setReserveNotice(String reserveNotice) {
		this.reserveNotice = reserveNotice;
	}
	public String getReservInfo() {
		return reservInfo;
	}
	public void setReservInfo(String reservInfo) {
		this.reservInfo = reservInfo;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public char getEmpty() {
		return empty;
	}
	public void setEmpty(char empty) {
		this.empty = empty;
	}

	@Override
	public String toString() {
		return "Camp [businessNo=" + businessNo + ", campNo=" + campNo + ", campName=" + campName + ", campType="
				+ campType + ", cmapPo=" + cmapPo + ", campMaxPo=" + campMaxPo + ", campPrice=" + campPrice
				+ ", checkIn=" + checkIn + ", checkOut=" + checkOut + ", reserveNotice=" + reserveNotice
				+ ", reservInfo=" + reservInfo + ", regDate=" + regDate + ", empty=" + empty + "]";
	}
	
	
	
	
	
}
