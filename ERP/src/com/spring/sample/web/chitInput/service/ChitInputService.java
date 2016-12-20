package com.spring.sample.web.chitInput.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.chitInput.dao.IChitInputDao;

@Service
public class ChitInputService implements IChitInputService{
	@Autowired IChitInputDao iChitInputDao;
	
	@Override
	public String insertSal(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.insertSal(params);
	}

	@Override
	public String insertSalDetail(HashMap<String, String> list) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.insertSalDetail(list);
	}

	@Override
	public String insertInc(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.insertInc(params);
	}

	@Override
	public String insertIncDetail(HashMap<String, String> list) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.insertIncDetail(list);
	}

	@Override
	public String insertOthSal(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.insertOthSal(params);
	}

	@Override
	public String insertOthSalDetail(HashMap<String, String> list) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.insertOthSalDetail(list);
	}

	@Override
	public String insertOthInc(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.insertOthInc(params);
	}

	@Override
	public String insertOthIncDetail(HashMap<String, String> list) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.insertOthIncDetail(list);
	}
}
