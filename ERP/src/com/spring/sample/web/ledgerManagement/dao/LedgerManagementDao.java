package com.spring.sample.web.ledgerManagement.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class LedgerManagementDao implements ILedgerManagementDao{
	@Autowired
	public SqlMapClient sqlMapClient;

	@Override
	public ArrayList<String> getCusNo(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		
		return (ArrayList<String>) sqlMapClient.queryForList("LedgerManagement.getCusNo", params);
	}
}
