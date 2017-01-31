package com.spring.sample.web.financialStatement.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface IFinancialStatementService {

	ArrayList<HashMap<String, String>> getTrial(HashMap<String, String> params) throws Throwable;

	ArrayList<HashMap<String, Integer>> getTotalSub(HashMap<String, String> params) throws Throwable;

	ArrayList<HashMap<String, Integer>> getTotalMoney(HashMap<String, String> params) throws Throwable;

	int getDepthMax(HashMap<String, String> params) throws Throwable;
	
	ArrayList<HashMap<String, String>> getIncomeData(HashMap<String, String> params) throws Throwable;


}
