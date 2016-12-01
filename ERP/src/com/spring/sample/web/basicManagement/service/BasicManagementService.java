package com.spring.sample.web.basicManagement.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.basicManagement.dao.IBasicManagementDao;

@Service
public class BasicManagementService implements IBasicManagementService{
	@Autowired
	public IBasicManagementDao iBasicManagementDao;
	
	@Override
	public ArrayList<HashMap<String, String>> cusCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.cusCon(params);
	}

	@Override
	public int getCusCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.getCusCount(params);
	}

	@Override
	public String insertCus(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.insertCus(params);
	}

	@Override
	public HashMap<String, String> getCus(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.getCus(params);
	}

	@Override
	public int updateCus(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.updateCus(params);
	}

}
