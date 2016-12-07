package com.spring.sample.web.bbs.dao;


import java.util.ArrayList;
import java.util.HashMap;

public interface IBbsDao {
	public int getBbsCount(HashMap<String, String> params) throws Throwable;
	public ArrayList<HashMap<String, String>> getBbs(HashMap<String, String> params) throws Throwable;
	public String insertBbs(HashMap<String, String> params) throws Throwable;
	public HashMap<String, String> getBbsCon(HashMap<String, String> params) throws Throwable;
	public int deleteBbs(HashMap<String, String> params)throws Throwable;
	public int updateBbs(HashMap<String, String> params) throws Throwable;
	public int hitUp(HashMap<String, String> params) throws Throwable;
	
}
