package com.spring.sample.web.ledgerManagement.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class LedgerManagementDao {
	@Autowired
	public SqlMapClient sqlMapClient;
}
