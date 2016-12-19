package com.spring.sample.web.main.service;
import java.util.ArrayList;
import java.util.HashMap;
public interface IMainService {

	ArrayList<HashMap<String, String>> getDeptBbs(HashMap<String, String> params) throws Throwable;
	ArrayList<HashMap<String, String>> getNoticeBbs(HashMap<String, String> params) throws Throwable;

}
