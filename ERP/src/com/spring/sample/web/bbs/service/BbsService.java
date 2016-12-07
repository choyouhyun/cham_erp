package com.spring.sample.web.bbs.service;


import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.bbs.dao.IBbsDao;

@Service
public class BbsService implements IBbsService{
	@Autowired
	public IBbsDao iBbsDao;
	
//프로젝트
	@Override
	public int getBbsCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBbsDao.getBbsCount(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getBbs(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBbsDao.getBbs(params);
	}

	@Override
	public String insertBbs(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBbsDao.insertBbs(params);
	}

	@Override
	public HashMap<String, String> getBbsCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBbsDao.getBbsCon(params);
	}

	@Override
	public int deleteBbs(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBbsDao.deleteBbs(params);
	}

	@Override
	public int updateBbs(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBbsDao.updateBbs(params);
	}

	@Override
	public int hitUp(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBbsDao.hitUp(params);
	}
 
}
