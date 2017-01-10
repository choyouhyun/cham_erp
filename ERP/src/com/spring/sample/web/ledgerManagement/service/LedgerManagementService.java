package com.spring.sample.web.ledgerManagement.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.ledgerManagement.dao.ILedgerManagementDao;

@Service
public class LedgerManagementService implements ILedgerManagementService{
	@Autowired
	public ILedgerManagementDao iLedgerManagementDao;

	@Override
	public ArrayList<HashMap<String, String>> getChit(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLedgerManagementDao.getChit(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getBeforeMoney(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLedgerManagementDao.getBeforeMoney(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getCusNo(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLedgerManagementDao.getCusNo(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getSubNo(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLedgerManagementDao.getSubNo(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getCusBeforeMoney(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLedgerManagementDao.getCusBeforeMoney(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getCusChit(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLedgerManagementDao.getCusChit(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getIncChit(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLedgerManagementDao.getIncChit(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getSalChit(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLedgerManagementDao.getSalChit(params);
	}
	
}
