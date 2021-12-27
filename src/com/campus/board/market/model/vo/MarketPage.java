package com.campus.board.market.model.vo;

import java.util.ArrayList;

public class MarketPage {
	private ArrayList<MarketBoard> pageList = null;
	private String pageNavi = null;
	
	public MarketPage() {
		super();
	}
	public MarketPage(ArrayList<MarketBoard> pageList, String pageNavi) {
		super();
		this.pageList = pageList;
		this.pageNavi = pageNavi;
	}

	public ArrayList<MarketBoard> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<MarketBoard> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
}
