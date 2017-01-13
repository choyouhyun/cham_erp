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
	public ArrayList<HashMap<String, String>> getCusNo(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("ledgerManagement.getCusNo", params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getChit(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("ledgerManagement.getSubChit", params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getBeforeMoney(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("ledgerManagement.subBeforeMoney", params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getCusChit(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("ledgerManagement.getCusChit", params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getCusBeforeMoney(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("ledgerManagement.cusBeforeMoney", params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getSubNo(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("ledgerManagement.getSubNo", params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getIncSalChit(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("ledgerManagement.getIncSalChit", params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getMonth(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("ledgerManagement.getMonth", params);
	}
}
