package com.spring.sample.web.financialStatement.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.sample.web.financialStatement.service.IFinancialStatementService;

@Controller
public class FinancialStatementController {
	@Autowired IFinancialStatementService iFinancialStatementService;
	
	@RequestMapping(value="/totalTrialBalance")
	public ModelAndView Test(HttpServletRequest request, ModelAndView modelAndView) {
		modelAndView.setViewName("financialStatement/totalTrialBalance");
		return modelAndView;
	} //컨트롤러의 가장 기본적인 형태
}
