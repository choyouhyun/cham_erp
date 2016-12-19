package com.spring.sample.web.chitInput.service;

import java.util.HashMap;

public interface IChitInputService {

	public String insertSal(HashMap<String, String> params) throws Throwable;

	public String insertSalDetail(HashMap<String, String> list) throws Throwable;
}
