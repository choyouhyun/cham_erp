package com.spring.sample.web.financialStatement.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.financialStatement.dao.IFinancialStatementDao;

@Service
public class FinancialStatementService implements IFinancialStatementService{
	@Autowired IFinancialStatementDao iFinancialStatementDao;
}
