package com.spring.sample.web.financialStatement.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class FinancialStatementDao implements IFinancialStatementDao{
	@Autowired SqlMapClient sqlMapClient;

	@Override
	public ArrayList<HashMap<String, String>> getTrial(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("financialStatement.getTrial", params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getSub(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("financialStatement.getSub", params);
	}
}
