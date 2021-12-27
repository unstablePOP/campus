package com.campus.board.info.model.vo;

import java.util.ArrayList;

public class InfoPage {
	private ArrayList<InfoBoard> pageList = null;
	private String pageNavi = null;
	
	public InfoPage() {
		super();
	}
	public InfoPage(ArrayList<InfoBoard> pageList, String pageNavi) {
		super();
		this.pageList = pageList;
		this.pageNavi = pageNavi;
	}

	public ArrayList<InfoBoard> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<InfoBoard> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
}
