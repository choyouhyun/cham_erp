package com.spring.sample.web.bbs.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class BbsDao implements IBbsDao {
	@Autowired
	public SqlMapClient sqlMapClient;
	

	@Override
	public int getBbsCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (int) sqlMapClient.queryForObject("test.getBbsCount",params);
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> getBbs(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) 
				sqlMapClient.queryForList("test.getBbs",params);
	}

	@Override
	public String insertBbs(HashMap<String, String> params) throws Throwable {
		String res = "false";
		sqlMapClient.startTransaction();
		
		try {
			sqlMapClient.insert("test.insertBbs", params);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction();
			
			res = "true";
		} catch (Exception e) {
			res = "false";
			e.printStackTrace();
		}
		
		sqlMapClient.endTransaction();
		return res;
	}

	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, String> getBbsCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>)
				sqlMapClient.queryForObject("test.getBbsCon",params);
	}

	@Override
	public int deleteBbs(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return  sqlMapClient.delete("test.deleteBbs",params);
	}

	@Override
	public int updateBbs(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlMapClient.update("test.updateBbs",params);
	}

	@Override
	public int hitUp(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		int res = 0;
		try{
			sqlMapClient.update("test.hitUp", params);
			res = 1;
		}catch (Exception e){
			res = 0;
		}
		return res;
	}
}
