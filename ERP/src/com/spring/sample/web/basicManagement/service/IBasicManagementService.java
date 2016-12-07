package com.spring.sample.web.basicManagement.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface IBasicManagementService {

	public ArrayList<HashMap<String, String>> cusCon(HashMap<String, String> params) throws Throwable;

	public int getCusCount(HashMap<String, String> params) throws Throwable;

	public String insertCus(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getCus(HashMap<String, String> params) throws Throwable;

	public int updateCus(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> deptAjax(HashMap<String, String> params) throws Throwable;

	public int getDeptCount(HashMap<String, String> params) throws Throwable;

	public String insertDept(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getDeptCon(HashMap<String, String> params) throws Throwable;

	public int updateDept(HashMap<String, String> params) throws Throwable;
}
