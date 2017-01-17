package com.spring.sample.web.chitManagement.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.chitManagement.dao.IchitManagementDao;

@Service
public class chitManagementService implements IchitManagementService{
	@Autowired IchitManagementDao ichitManagementDao;
	
	
	@Override
	public String insertSalRe(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return ichitManagementDao.insertSalRe(params);
	}
	
	@Override
	public String insertSalReDetail(HashMap<String, String> list) throws Throwable {
		// TODO Auto-generated method stub
		return ichitManagementDao.insertSalReDetail(list);
	}

	@Override
	public ArrayList<HashMap<String, String>> GetSal_Re(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return ichitManagementDao.GetSal_Re(params);
	}

	@Override
	public void updateSalRe(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		ichitManagementDao.updateSalRe(params);
	}

	@Override
	public HashMap<String, String> GetSal_Re_Obj(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return ichitManagementDao.GetSal_Re_Obj(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> GetSal_Re_Det(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return ichitManagementDao.GetSal_Re_Det(params);
	}

	@Override
	public int updateSalReDetail(HashMap<String, String> list) throws Throwable {
		// TODO Auto-generated method stub
		return ichitManagementDao.updateSalReDetail(list);
	}

	@Override
	public String insertSign(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return ichitManagementDao.insertSign(params);
	}


	@Override
	public int getSalReCount(HashMap<String, String> params)  throws Throwable{
		// TODO Auto-generated method stub
		return ichitManagementDao.getSalReCount(params);
	}
}

