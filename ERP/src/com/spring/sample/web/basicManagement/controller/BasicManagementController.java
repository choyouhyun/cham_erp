package com.spring.sample.web.basicManagement.controller;

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
import com.spring.sample.common.service.IPagingService;
import com.spring.sample.web.basicManagement.service.BasicManagementService;
import com.spring.sample.web.basicManagement.service.IBasicManagementService;
import com.sun.xml.internal.ws.resources.HttpserverMessages;

@Controller
public class BasicManagementController {
	@Autowired
	public IBasicManagementService iBasicManagementService;
	@Autowired
	public IPagingService iPagingService;

	//거래처 리스트
	@RequestMapping(value="/customerList")
	public ModelAndView CustomerList(HttpServletRequest request, @RequestParam HashMap<String, String> params, ModelAndView modelAndView) {

		modelAndView.setViewName("basicManagement/customerList");
		return modelAndView;
	}


	//거래처 리스트 Ajax
	@RequestMapping(value="/cusAjax")
	public @ResponseBody ResponseEntity<String> cusAjax(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();

		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		PagingBean pb = iPagingService.getPageingBean(Integer.parseInt(params.get("page")),iBasicManagementService.getCusCount(params)); 
		params.put("start", Integer.toString(pb.getStartCount()));                        
		params.put("end", Integer.toString(pb.getEndCount()));
		ArrayList<HashMap<String, String>> list = iBasicManagementService.cusCon(params);

		modelMap.put("list", list);
		modelMap.put("pb", pb);

		modelMap.put("list", list);

		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}

	//거래처 등록
	@RequestMapping(value="/customerRegister")
	public ModelAndView CustomerRegister(HttpServletRequest request, @RequestParam HashMap<String, String> params, ModelAndView modelAndView) {

		modelAndView.setViewName("basicManagement/customerRegister");
		return modelAndView;
	}

	//거래처 등록 ajax
	@RequestMapping(value="/insertCus") 
	public @ResponseBody ResponseEntity<String> insertTest( //데이터를 가져가기위해 가상의 바디를 만들어 바디로서 인식시켜줌
			HttpServletRequest request,@RequestParam HashMap<String, String>params,  ModelAndView modelAndView) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();//ObjectMapper란 map타입을 json타입으로 만들어주는 기능
		Map<String, Object> modelMap = new HashMap<String, Object>();
		String res = iBasicManagementService.insertCus(params);

		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8"); //text/json 타입만을 받겠다
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	
	//거래처 수정
	@RequestMapping(value="/customerEdit")
	public ModelAndView customerEdit(HttpServletRequest request, @RequestParam HashMap<String, String> params, ModelAndView modelAndView) {
		
		
		modelAndView.setViewName("basicManagement/customerEdit");
		return modelAndView;
	}
	
	//거래처 수정 가져오기 Ajax
	@RequestMapping(value="/getCus")
	public @ResponseBody ResponseEntity<String> getCus(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		HashMap<String, String> list = iBasicManagementService.getCus(params);

		modelMap.put("list", list);
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	
	
	//거래처 수정 완료 Ajax
	@RequestMapping(value="/updateCus")
	public @ResponseBody ResponseEntity<String> updateCus(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params ) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();//ObjectMapper란 map타입을 json타입으로 만들어주는 기능
		Map<String, Object> modelMap = new HashMap<String, Object>();
		int res = iBasicManagementService.updateCus(params);

		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8"); //text/json 타입만을 받겠다
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);

	}
}
