package com.spring.sample.web.chitManagement.controller;


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

import com.spring.sample.common.bean.PagingBean;
import com.spring.sample.common.service.IPagingService;
import com.spring.sample.web.chitManagement.service.IchitManagementService;

@Controller
public class chitManagementController {
	@Autowired public IchitManagementService ichitManagementService;
	@Autowired public IPagingService iPagingService;
	
	@RequestMapping(value="/chitManagement")
	public ModelAndView chitManagement(HttpServletRequest request, @RequestParam HashMap<String, String> params, ModelAndView modelAndView) {

		modelAndView.setViewName("chitManagement/chitManagement");
		return modelAndView;
	}


	
	@RequestMapping(value="/chitAjax")
	public @ResponseBody ResponseEntity<String> chitAjax(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params) throws Throwable {
		System.out.println("실행");
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		/*PagingBean pb = iPagingService.getPageingBean(Integer.parseInt(params.get("page")),ichitManagementService.getchitCount(params)); 
		params.put("start", Integer.toString(pb.getStartCount()));                        
		params.put("end", Integer.toString(pb.getEndCount()));*/
		ArrayList<HashMap<String, String>> list = ichitManagementService.chitCon(params);

		modelMap.put("list", list);
		/*modelMap.put("pb", pb);*/
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	
	
	
	
}


