package com.spring.sample.web.main.service;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.bbs.service.IBbsService;
import com.spring.sample.web.main.dao.IMainDao;


@Service
public class MainService implements IMainService{
	@Autowired
	public IMainDao iMainDao;

	@Override
	public ArrayList<HashMap<String, String>> getDeptBbs(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iMainDao.getDeptBbs(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getNoticeBbs(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iMainDao.getNoticeBbs(params);
	}

}
