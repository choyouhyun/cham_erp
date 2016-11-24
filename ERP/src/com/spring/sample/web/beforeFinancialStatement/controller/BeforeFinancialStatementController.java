package com.spring.sample.web.beforeFinancialStatement.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BeforeFinancialStatementController {
	@RequestMapping(value="/test2")
	public ModelAndView Test(HttpServletRequest request, ModelAndView modelAndView) {
		modelAndView.setViewName("test/test");
		return modelAndView;
	} //컨트롤러의 가장 기본적인 형태
	@RequestMapping(value="/JeonJaeMu")
	public ModelAndView JeonJaeMu(HttpServletRequest request, 
								ModelAndView modelAndView) throws Throwable {
		
		modelAndView.setViewName("test/JeonJaeMu");
		return modelAndView;
	}
	@RequestMapping(value="/JeonSonIk")
	public ModelAndView JeonSonIk(HttpServletRequest request, 
								ModelAndView modelAndView) throws Throwable {
		
		modelAndView.setViewName("test/JeonSonIk");
		return modelAndView;
	}
}
