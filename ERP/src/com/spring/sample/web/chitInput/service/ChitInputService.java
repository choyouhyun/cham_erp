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

	@Override
	public HashMap<String, String> getchit(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.getchit(params);
	}

	@Override
	public int updatechit(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.updatechit(params);
	}

	@Override
	public HashMap<String, String> getinchit(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.getinchit(params);
	}

	@Override
	public int updateinchit(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.updateinchit(params);
	}

	@Override
	public HashMap<String, String> getOthInchit(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.getOthInchit(params);
	}

	@Override
	public int updateOthInchit(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iChitInputDao.updateOthInchit(params);
	}
}
