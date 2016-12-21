package com.spring.sample.web.ledgerManagement.dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface ILedgerManagementDao {

	public ArrayList<String> getCusNo(HashMap<String, String> params) throws Throwable;

}
