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
	public ArrayList<String> getCusNo(HashMap<String, String> params) throws Throwable{
		// TODO Auto-generated method stub
		return iLedgerManagementDao.getCusNo(params);
	}
}
