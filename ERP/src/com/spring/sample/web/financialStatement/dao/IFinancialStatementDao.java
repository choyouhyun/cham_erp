package com.spring.sample.web.financialStatement.dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface IFinancialStatementDao {

	ArrayList<HashMap<String, String>> getTrial(HashMap<String, String> params) throws Throwable;

	ArrayList<HashMap<String, String>> getSub(HashMap<String, String> params) throws Throwable;

}
