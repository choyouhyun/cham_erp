package com.spring.sample.web.ledgerManagement.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.log.SystemLogHandler;
import org.codehaus.jackson.map.ObjectMapper;
import org.directwebremoting.util.SystemOutLoggingOutput;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.sample.web.ledgerManagement.service.ILedgerManagementService;

@Controller
public class LedgerManagementController {
	@Autowired ILedgerManagementService iLedgerManagementService;	
	
	@RequestMapping(value="/customerLedger")
	public ModelAndView customerLedger(HttpServletRequest request, 
								ModelAndView modelAndView) throws Throwable {
		
		modelAndView.setViewName("ledgerManagement/customerLedger");
		return modelAndView;
	}
	@RequestMapping(value="/subjectLedger")
	public ModelAndView subjectLedger(HttpServletRequest request, 
								ModelAndView modelAndView) throws Throwable {
		
		modelAndView.setViewName("ledgerManagement/subjectLedger");
		return modelAndView;
	}
	
	@RequestMapping(value="/subLedgerGet")
	public @ResponseBody ResponseEntity<String> subLedgerGet(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params) throws Throwable {
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		ObjectMapper mapper = new ObjectMapper();
		ArrayList<HashMap<String,String>> chit = iLedgerManagementService.getChit(params);
		ArrayList<HashMap<String,String>> beforeMoney = iLedgerManagementService.getBeforeMoney(params);
		System.out.println(chit);
		System.out.println(beforeMoney);
		modelMap.put("chit", chit);
		modelMap.put("beforeMoney", beforeMoney);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
}
