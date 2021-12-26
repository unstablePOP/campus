package com.campus.service.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.campus.service.model.vo.Answer;
import com.campus.service.model.vo.Service;

public interface ServiceService {

	int writeService(Service s);

	HashMap<String, Object> serviceList(String userId, int currentPage);

	Service serviceSelectContent(int serviceNo);

	int updateService(Service s,int serviceNo);

	HashMap<String, Object> serviceList(int currentPage);

	int qnaAnswer(String answerContent, int serviceNo);

	Answer qnaAnswerContent(int serviceNo);

}
