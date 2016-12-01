package com.spring.sample.web.basicManagement.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

public interface IBasicManagementDao {

	public ArrayList<HashMap<String, String>> cusCon(HashMap<String, String> params) throws Throwable;

	public int getCusCount(HashMap<String, String> params) throws Throwable;

	public String insertCus(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getCus(HashMap<String, String> params) throws Throwable;

	public int updateCus(HashMap<String, String> params) throws Throwable;

}
