package com.spring.sample.web.ledgerManagement.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface ILedgerManagementService {
	public ArrayList<HashMap<String, String>> getChit(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getBeforeMoney(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getCusNo(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getSubNo(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getCusBeforeMoney(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getCusChit(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getIncSalChit(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getMonth(HashMap<String, String> params) throws Throwable;

}
