package com.campus.board.notice.model.vo;

import java.util.ArrayList;

public class NoticePage {
	private ArrayList<NoticeBoard> pageList = null;
	private String pageNavi = null;
	
	public NoticePage() {
		super();
	}
	public NoticePage(ArrayList<NoticeBoard> pageList, String pageNavi) {
		super();
		this.pageList = pageList;
		this.pageNavi = pageNavi;
	}

	public ArrayList<NoticeBoard> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<NoticeBoard> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
}
