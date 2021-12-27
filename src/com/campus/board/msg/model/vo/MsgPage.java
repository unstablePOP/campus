package com.campus.board.msg.model.vo;

import java.util.ArrayList;

public class MsgPage {
	private ArrayList<MsgBoard> pageList = null;
	private String pageNavi = null;
	
	public MsgPage() {
		super();
	}
	public MsgPage(ArrayList<MsgBoard> pageList, String pageNavi) {
		super();
		this.pageList = pageList;
		this.pageNavi = pageNavi;
	}

	public ArrayList<MsgBoard> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<MsgBoard> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
}
