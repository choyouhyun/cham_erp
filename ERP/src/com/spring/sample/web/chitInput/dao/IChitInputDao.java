package com.spring.sample.web.chitInput.dao;

import java.util.HashMap;

public interface IChitInputDao {

	public String insertSal(HashMap<String, String> params) throws Throwable;

	public String insertSalDetail(HashMap<String, String> list) throws Throwable;

	public String insertInc(HashMap<String, String> params) throws Throwable;

	public String insertIncDetail(HashMap<String, String> list) throws Throwable;

	public String insertOthSal(HashMap<String, String> params) throws Throwable;

	public String insertOthSalDetail(HashMap<String, String> list) throws Throwable;

	public String insertOthInc(HashMap<String, String> params) throws Throwable;

	public String insertOthIncDetail(HashMap<String, String> list) throws Throwable;

	public HashMap<String, String> getchit(HashMap<String, String> params)throws Throwable;

	public int updatechit(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getinchit(HashMap<String, String> params)throws Throwable;

	public int updateinchit(HashMap<String, String> params)throws Throwable;

	public HashMap<String, String> getOthInchit(HashMap<String, String> params)throws Throwable;

	public int updateOthInchit(HashMap<String, String> params)throws Throwable;
}
