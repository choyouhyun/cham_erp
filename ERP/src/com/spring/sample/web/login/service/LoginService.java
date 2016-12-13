package com.spring.sample.web.login.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.login.bean.LoginBean;
import com.spring.sample.web.login.dao.ILoginDao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.login.service.ILoginService;
import com.spring.sample.web.login.bean.LoginBean;
import com.spring.sample.web.login.dao.ILoginDao;

@Service
public class LoginService implements ILoginService {
	
	@Autowired
	public ILoginDao iLoginDao;

	@Override
	public LoginBean getUserInfo(LoginBean lb) throws Throwable {
		return iLoginDao.getUserInfo(lb);
	}

	@Override
	public HashMap<String, String> getMem(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLoginDao.getMem(params);
	}

}
