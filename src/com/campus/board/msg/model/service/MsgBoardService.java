package com.campus.board.msg.model.service;

import com.campus.board.msg.model.vo.MsgBoard;
import com.campus.board.msg.model.vo.MsgPage;

public interface MsgBoardService {

	MsgPage msgboardListAll(int currentPage, String userId);

	MsgBoard msgboardSelectOne(int msgNo);

	int delete(int msgNo, String userId);

	int insert(MsgBoard msgBoard);

	MsgPage search(String type, String keyword, int currentPage, String userId);
}
