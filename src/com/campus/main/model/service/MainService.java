package com.campus.main.model.service;

import java.util.ArrayList;

import com.campus.main.model.vo.Free;
import com.campus.main.model.vo.Notice;

public interface MainService {

	ArrayList<Free> freeData();

	ArrayList<Notice> noticeData();

	void count();

}
