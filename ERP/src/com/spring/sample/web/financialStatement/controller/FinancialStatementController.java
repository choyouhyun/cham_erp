package com.spring.sample.web.financialStatement.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@RequestMapping(value="/getTrial")
	public @ResponseBody ResponseEntity<String> getTrial(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params) throws Throwable {
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		ArrayList<HashMap<String, Integer>> sub = iFinancialStatementService.getTotalSub(params);
		ArrayList<HashMap<String, Integer>> money = iFinancialStatementService.getTotalMoney(params);
		System.out.println(sub);
		System.out.println(money);
		modelMap.put("trial", sub);
		modelMap.put("trial", money);
		ObjectMapper mapper = new ObjectMapper();
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
}
