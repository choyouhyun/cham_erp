package com.spring.sample.web.main.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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

import com.spring.sample.common.bean.PagingBean;
import com.spring.sample.web.bbs.service.IBbsService;
import com.spring.sample.web.main.service.IMainService;

@Controller
public class MainController {
	 @Autowired
	 public IMainService iMainService;
	@RequestMapping(value= "/noticeList")
	public @ResponseBody ResponseEntity<String> noticeList(
			HttpServletRequest request,
			@RequestParam HashMap<String, String> params,
			ModelAndView modelAndView) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, String>> list
									= iMainService.getNoticeBbs(params);
		
		modelMap.put("list", list);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
										  responseHeaders, HttpStatus.CREATED);
		
	}
	@RequestMapping(value= "/deptBbsList")
	public @ResponseBody ResponseEntity<String> deptBbsList(
			HttpServletRequest request,
			@RequestParam HashMap<String, String> params,
			ModelAndView modelAndView) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, String>> list
									= iMainService.getDeptBbs(params);
		
		modelMap.put("list", list);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
										  responseHeaders, HttpStatus.CREATED);
		
	}
}
