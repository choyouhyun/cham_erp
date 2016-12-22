package com.spring.sample.web.chitManagement.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class chitManagementDao implements IchitManagementDao{
	
	@Autowired public SqlMapClient sqlMapClient;

	@Override
	public int getchitCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (int) sqlMapClient.queryForObject("chitManagement.getchitCount");
	}

	@Override
	public ArrayList<HashMap<String, String>> chitCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("chitManagement.chitCon", params);
	}

	
}
