package com.spring.sample.web.chitManagement.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.chitManagement.dao.IchitManagementDao;

@Service
public class chitManagementService implements IchitManagementService{
	@Autowired 
	public IchitManagementDao ichitManagementDao;

	@Override
	public int getchitCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return ichitManagementDao.getchitCount(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> chitCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return ichitManagementDao.chitCon(params);
	}
	
	
	
}
