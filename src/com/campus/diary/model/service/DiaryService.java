package com.campus.diary.model.service;

import java.util.ArrayList;

import com.campus.diary.model.vo.Background;
import com.campus.diary.model.vo.Frame;
import com.campus.diary.model.vo.Title;

public interface DiaryService {

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

	/**
	 * 작성자 : yeonhee
	 * @param t void
	 * 작성일 : 2021. 12. 25.
	 * 
	 * Descriptrion : 다이어리 타이틀 업데이트
	 */
	int updateTitle(Title t);

	/**
	 * 작성자 : yeonhee
	 * @param userId
	 * @return Title
	 * 작성일 : 2021. 12. 25.
	 * 
	 * Descriptrion : 다이어리 타이틀 정보 가져오기
	 */
	Title selectTitle(String userId);

	/**
	 * 작성자 : yeonhee
	 * @param bg
	 * @return int
	 * 작성일 : 2021. 12. 26.
	 * 
	 * Descriptrion : 다이어리 배경이미지 업로드 (존재하면 업데이트 없으면 생성)
	 */
	int updateBackground(Background bg);

	/**
	 * 작성자 : yeonhee
	 * @param userId
	 * @return Background
	 * 작성일 : 2021. 12. 26.
	 * 
	 * Descriptrion : 다이어리 배경 정보 가져오기
	 */
	Background selectBackground(String userId);

}
