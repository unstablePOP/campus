package com.campus.main.model.vo;

public class Market {
	private int marketNo;
	private String marketTitle;
	private int marketCount;
	
	public Market(int marketNo, String marketTitle, int marketCount) {
		super();
		this.marketNo = marketNo;
		this.marketTitle = marketTitle;
		this.marketCount = marketCount;
	}
	public Market() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getMarketNo() {
		return marketNo;
	}
	public void setMarketNo(int marketNo) {
		this.marketNo = marketNo;
	}
	public String getMarketTitle() {
		return marketTitle;
	}
	public void setMarketTitle(String marketTitle) {
		this.marketTitle = marketTitle;
	}
	public int getMarketCount() {
		return marketCount;
	}
	public void setMarketCount(int marketCount) {
		this.marketCount = marketCount;
	}
	
	
}
