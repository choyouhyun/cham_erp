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

	public int getRankCount(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> rankAjax(HashMap<String, String> params) throws Throwable;

	public String insertRank(HashMap<String, String> params) throws Throwable;

	public int deleteCus(String string) throws Throwable;

	public int deleteDept(String string) throws Throwable;

	public ArrayList<HashMap<String, String>> getSub() throws Throwable;

	public HashMap<String, String> regSub(HashMap<String, String> params) throws Throwable;

	public String subInsert(HashMap<String, String> params) throws Throwable;

	public int subUpdate(HashMap<String, String> params) throws Throwable;

	public int subDelete(String string) throws Throwable;

	public String getIdCheck(HashMap<String, String> params) throws Throwable;

	public int getMemCount(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> memCon(HashMap<String, String> params) throws Throwable;

	public String Meminsert(HashMap<String, String> params)throws Throwable;

	public int updateMem(HashMap<String, String> params)throws Throwable;

	public HashMap<String, String> getMemList(HashMap<String, String> params) throws Throwable;

	public int delMem(String string) throws Throwable;

	public HashMap<String, String> ComInfoGet() throws Throwable;

	public String ComInsert(HashMap<String, String> params) throws Throwable;

	public void ComUpdate(HashMap<String, String> params) throws Throwable;
	
	public ArrayList<HashMap<String, String>> getTest(HashMap<String, String> params) throws Throwable;
	
	public ArrayList<HashMap<String, String>> getList() throws Throwable;
	
	public int getTestCount(HashMap<String, String> params) throws Throwable ;
	
	public String insertTest(HashMap<String, String> params) throws Throwable;



	
	
}
