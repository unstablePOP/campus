package com.campus.board.msg.model.vo;

import java.sql.Date;

public class MsgBoard {
	private int msgNo;
	private String msgTitle;
	private Date msgDate;
	private String sendId;
	private String receiveId;
	private String msgContent;
	private char msgWithdrawal;
	
	public int getMsgNo() {
		return msgNo;
	}
	public MsgBoard(int msgNo, String msgTitle, Date msgDate, String sendId, String receiveId, String msgContent,
			char msgWithdrawal) {
		super();
		this.msgNo = msgNo;
		this.msgTitle = msgTitle;
		this.msgDate = msgDate;
		this.sendId = sendId;
		this.receiveId = receiveId;
		this.msgContent = msgContent;
		this.msgWithdrawal = msgWithdrawal;
	}
	
	public MsgBoard() {
		super();
	}
	public void setMsgNo(int msgNo) {
		this.msgNo = msgNo;
	}
	public String getMsgTitle() {
		return msgTitle;
	}
	public void setMsgTitle(String msgTitle) {
		this.msgTitle = msgTitle;
	}
	public Date getMsgDate() {
		return msgDate;
	}
	public void setMsgDate(Date msgDate) {
		this.msgDate = msgDate;
	}
	public String getSendId() {
		return sendId;
	}
	public void setSendId(String sendId) {
		this.sendId = sendId;
	}
	public String getReceiveId() {
		return receiveId;
	}
	public void setReceiveId(String receiveId) {
		this.receiveId = receiveId;
	}
	public String getMsgContent() {
		return msgContent;
	}
	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}
	public char getMsgWithdrawal() {
		return msgWithdrawal;
	}
	public void setMsgWithdrawal(char msgWithdrawal) {
		this.msgWithdrawal = msgWithdrawal;
	}
}
