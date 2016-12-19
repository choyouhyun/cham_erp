package com.spring.sample.web.main.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.spring.sample.web.bbs.service.IBbsService;

@Repository
public class MainDao  implements IMainDao{
	@Autowired
	public SqlMapClient sqlMapClient;

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> getDeptBbs(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) 
				sqlMapClient.queryForList("main.getDeptBbs",params);
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> getNoticeBbs(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) 
				sqlMapClient.queryForList("main.getNoticeBbs",params);
	}
}
