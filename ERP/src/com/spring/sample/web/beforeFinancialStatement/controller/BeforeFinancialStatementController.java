package com.spring.sample.web.beforeFinancialStatement.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BeforeFinancialStatementController {
	@RequestMapping(value="/BeforeFinancialStatement")
	public ModelAndView BeforeFinancialStatement(HttpServletRequest request, 
								ModelAndView modelAndView) throws Throwable {
		
		modelAndView.setViewName("beforeFinancialStatement/BeforeFinancialStatement");
		return modelAndView;
	}
	@RequestMapping(value="/BeforeProfitAndLoss")//따닥
	public ModelAndView BeforeProfitAndLoss(HttpServletRequest request, 
								ModelAndView modelAndView) throws Throwable {
		
		modelAndView.setViewName("beforeFinancialStatement/BeforeProfitAndLoss");
		return modelAndView;
	}
}
