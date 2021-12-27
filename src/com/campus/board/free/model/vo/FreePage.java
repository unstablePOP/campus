package com.campus.board.free.model.vo;

import java.util.ArrayList;

public class FreePage {
	private ArrayList<FreeBoard> pageList = null;
	private String pageNavi = null;
	
	public FreePage() {
		super();
	}
	public FreePage(ArrayList<FreeBoard> pageList, String pageNavi) {
		super();
		this.pageList = pageList;
		this.pageNavi = pageNavi;
	}

	public ArrayList<FreeBoard> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<FreeBoard> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
}
