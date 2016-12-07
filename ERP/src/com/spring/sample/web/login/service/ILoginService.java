package com.spring.sample.web.login.service;

import java.util.HashMap;

import com.spring.sample.web.login.bean.LoginBean;

public interface ILoginService {

	public LoginBean getUserInfo(LoginBean lb) throws Throwable;

	public HashMap<String, String> getMem(HashMap<String, String> params) throws Throwable;

}