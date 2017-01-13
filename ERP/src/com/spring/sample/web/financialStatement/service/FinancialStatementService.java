package com.spring.sample.web.financialStatement.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.financialStatement.dao.IFinancialStatementDao;

@Service
public class FinancialStatementService implements IFinancialStatementService{
	@Autowired IFinancialStatementDao iFinancialStatementDao;

	@Override
	public ArrayList<HashMap<String, String>> getTrial(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iFinancialStatementDao.getTrial(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getSub(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iFinancialStatementDao.getSub(params);
	}
}
