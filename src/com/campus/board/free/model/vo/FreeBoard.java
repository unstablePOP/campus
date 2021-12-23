package com.campus.board.free.model.vo;

import java.sql.Date;

public class FreeBoard {
	private int free_no;
	private String free_title;
	private Date free_date;
	private String user_id;
	private String free_content;
	private String free_hit;
	private int free_like;
	private int free_hate;
	private char free_withdrawal;
	
	public FreeBoard() {
		super();
	}
	public FreeBoard(int free_no, String free_title, Date free_date, String user_id, String free_content,
			String free_hit, int free_like, int free_hate, char free_withdrawal) {
		super();
		this.free_no = free_no;
		this.free_title = free_title;
		this.free_date = free_date;
		this.user_id = user_id;
		this.free_content = free_content;
		this.free_hit = free_hit;
		this.free_like = free_like;
		this.free_hate = free_hate;
		this.free_withdrawal = free_withdrawal;
	}

	public int getFree_no() {
		return free_no;
	}
	public void setFree_no(int free_no) {
		this.free_no = free_no;
	}
	public String getFree_title() {
		return free_title;
	}
	public void setFree_title(String free_title) {
		this.free_title = free_title;
	}
	public Date getFree_date() {
		return free_date;
	}
	public void setFree_date(Date free_date) {
		this.free_date = free_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getFree_content() {
		return free_content;
	}
	public void setFree_content(String free_content) {
		this.free_content = free_content;
	}
	public String getFree_hit() {
		return free_hit;
	}
	public void setFree_hit(String free_hit) {
		this.free_hit = free_hit;
	}
	public int getFree_like() {
		return free_like;
	}
	public void setFree_like(int free_like) {
		this.free_like = free_like;
	}
	public int getFree_hate() {
		return free_hate;
	}
	public void setFree_hate(int free_hate) {
		this.free_hate = free_hate;
	}
	public char getFree_withdrawal() {
		return free_withdrawal;
	}
	public void setFree_withdrawal(char free_withdrawal) {
		this.free_withdrawal = free_withdrawal;
	}
}
