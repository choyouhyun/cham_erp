package com.spring.sample.web.ledgerManagement.dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface ILedgerManagementDao {

	public ArrayList<HashMap<String, String>> getCusNo(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getChit(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getBeforeMoney(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getCusChit(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getCusBeforeMoney(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getSubNo(HashMap<String, String> params) throws Throwable;

}
