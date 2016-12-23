package com.spring.sample.web.chitManagement.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface IchitManagementService {

	public int getchitCount(HashMap<String, String> params)  throws Throwable;

	public ArrayList<HashMap<String, String>> chitCon(HashMap<String, String> params)  throws Throwable;

	
}
