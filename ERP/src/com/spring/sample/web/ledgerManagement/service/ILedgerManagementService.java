package com.spring.sample.web.ledgerManagement.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface ILedgerManagementService {
	public ArrayList<HashMap<String, String>> getChit(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getBeforeMoney(HashMap<String, String> params) throws Throwable;

}
