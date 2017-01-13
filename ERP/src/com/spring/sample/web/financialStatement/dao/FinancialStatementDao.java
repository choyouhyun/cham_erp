package com.spring.sample.web.financialStatement.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class FinancialStatementDao implements IFinancialStatementDao{
	@Autowired SqlMapClient sqlMapClient;
}
