package com.campus.diary.model.service;

import java.util.ArrayList;

import com.campus.diary.model.vo.Frame;

public interface FrameService {

	/**
	 * 작성자 : yeonhee
	 * @param fr
	 * @return int
	 * 작성일 : 2021. 12. 23.
	 * 
	 * Descriptrion : 프레임 정보 디비에 저장
	 */
	int insertFrameUpload(Frame fr);

	/**
	 * 작성자 : yeonhee
	 * @param userId
	 * @return ArrayList<Frame>
	 * 작성일 : 2021. 12. 23.
	 * 
	 * Descriptrion : 프레임 정보 리스트 가져오기
	 */
	ArrayList<Frame> selectFrameList(String userId);

	/**
	 * 작성자 : yeonhee
	 * @param frameNo
	 * @param userId
	 * @return int
	 * 작성일 : 2021. 12. 24.
	 * 
	 * Descriptrion : 프레임 삭제
	 */
	int deleteFrame(int frameNo);

}
