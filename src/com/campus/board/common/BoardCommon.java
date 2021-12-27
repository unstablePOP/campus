package com.campus.board.common;

import java.sql.Connection;

public class BoardCommon {
	//게시판 전체 페이지 수
	public static int totalPage(int perPage, int totalPost) {
		int totalPage;
		
		if(totalPost%perPage>0) {
			totalPage=totalPost/perPage+1;
		}
		else {
			totalPage=totalPost/perPage;
		}
		return totalPage;
	}
	//게시판 시작 페이지
	public static int startNavi(int currentPage, int perPage, int naviPage, int totalPost) {
		int totalPage=BoardCommon.totalPage(perPage, totalPost);
		
		if (currentPage > totalPage) {
			currentPage = totalPage;
		}
		
		int startNavi=((currentPage-1)/naviPage)*naviPage+1;
		
		return startNavi;
	}
	//게시판 끝 페이지
	public static int endNavi(int currentPage, int perPage, int naviPage, int totalPost) {
		int totalPage=BoardCommon.totalPage(perPage, totalPost);
		
		if (currentPage > totalPage) {
			currentPage = totalPage;
		}
		int startNavi=BoardCommon.startNavi(currentPage, perPage, naviPage, totalPost);
		int endNavi=startNavi+naviPage-1;
		
		return endNavi;
	}
}
