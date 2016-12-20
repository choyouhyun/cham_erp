package com.spring.sample.web.chitInput.dao;

import java.util.HashMap;

public interface IChitInputDao {

	public String insertSal(HashMap<String, String> params) throws Throwable;

	public String insertSalDetail(HashMap<String, String> list) throws Throwable;
}
