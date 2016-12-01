package com.spring.sample.web.basicManagement.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class BasicManagementDao implements IBasicManagementDao{
	@Autowired
	public SqlMapClient sqlMapClient;
	
	@Override
	public ArrayList<HashMap<String, String>> cusCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("BasicManagement.cusCon", params);
	}

	@Override
	public int getCusCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (int) sqlMapClient.queryForObject("BasicManagement.getCusCount");
	}

	@Override
	public String insertCus(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		String res = "false";
		
		sqlMapClient.startTransaction();// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			sqlMapClient.insert("BasicManagement.insertCus", params);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); // 적용을 해준다
			
			res = "true";
		} catch (Exception e) {
			res = "false";
			e.printStackTrace();
		}
		
		sqlMapClient.endTransaction();
		return res;
	}

	@Override
	public HashMap<String, String> getCus(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>) sqlMapClient.queryForObject("BasicManagement.getCus", params);
	}

	@Override
	public int updateCus(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlMapClient.update("BasicManagement.updateCus", params);
	}
}
