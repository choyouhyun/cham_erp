package com.spring.sample.web.chitManagement.dao;

import java.util.HashMap;
import java.util.ArrayList;
import java.sql.SQLException;

public interface IchitManagementDao {

	public int getchitCount(HashMap<String, String> params)throws Throwable;

	public ArrayList<HashMap<String, String>> chitCon(HashMap<String, String> params)throws Throwable;

	
}
