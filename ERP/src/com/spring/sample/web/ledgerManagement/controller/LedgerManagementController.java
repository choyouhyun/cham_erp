package com.spring.sample.web.ledgerManagement.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LedgerManagementController {
	@RequestMapping(value="/customerLedger")
	public ModelAndView customerLedger(HttpServletRequest request, 
								ModelAndView modelAndView) throws Throwable {
		
		modelAndView.setViewName("test/customerLedger");
		return modelAndView;
	}
	@RequestMapping(value="/subjectLedger")
	public ModelAndView subjectLedger(HttpServletRequest request, 
								ModelAndView modelAndView) throws Throwable {
		
		modelAndView.setViewName("test/subjectLedger");
		return modelAndView;
	}
}
