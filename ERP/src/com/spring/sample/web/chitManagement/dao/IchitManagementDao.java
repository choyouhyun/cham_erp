package com.spring.sample.web.chitManagement.dao;

import java.util.HashMap;
import java.util.ArrayList;
import java.sql.SQLException;

public interface IchitManagementDao {

	public int getchitCount(HashMap<String, String> params)throws Throwable;

	public ArrayList<HashMap<String, String>> chitCon(HashMap<String, String> params)throws Throwable;
	
	public String insertSalRe(HashMap<String, String> params) throws Throwable;
	
	public String insertSalReDetail(HashMap<String, String> list) throws Throwable;

	public ArrayList<HashMap<String, String>> GetSal_Re(HashMap<String, String> params) throws Throwable;

	public void updateSalRe(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> GetSal_Re_Obj(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> GetSal_Re_Det(HashMap<String, String> params) throws Throwable;

	public int updateSalReDetail(HashMap<String, String> list) throws Throwable;

	public String insertSign(HashMap<String, String> params) throws Throwable;

	public int getSalReCount(HashMap<String, String> params) throws Throwable;
}
