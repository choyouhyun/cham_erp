package com.spring.sample.web.financialStatement.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FinancialStatementController {
	@RequestMapping(value="/test5")
	public ModelAndView Test(HttpServletRequest request, ModelAndView modelAndView) {
		modelAndView.setViewName("test/test");
		return modelAndView;
	} //컨트롤러의 가장 기본적인 형태
}
