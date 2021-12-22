package com.campus.reservation.model.service;

public interface CampService {



	/**
	 * Description : 요청한페이지(currentPage)에 대한 목록을 리턴
	 * Date : 2021. 12. 21.<br>
	 * History :<br>
	 * - 작성자 : lee, 날짜 : 2021. 12. 21., 설명 : 최초작성<br>
	 * @author lee
	 * @version 1.0
	 * @param currentPage
	 */
	void selectAllCampList(int currentPage);

}
