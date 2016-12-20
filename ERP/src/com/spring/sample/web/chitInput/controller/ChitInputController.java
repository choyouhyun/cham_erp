package com.spring.sample.web.chitInput.controller;


import java.io.Console;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

import com.spring.sample.web.chitInput.service.IChitInputService;

@Controller
public class ChitInputController {
	@Autowired IChitInputService iChitInputService;
	
	@RequestMapping(value="/salChitInput")
	public ModelAndView salchitinput(HttpServletRequest request,ModelAndView modelAndView, HttpSession session){
		
		modelAndView.setViewName("chitInput/salChitInput");
		return modelAndView;
	}
	
	@RequestMapping(value="/detail")
	public ModelAndView detail(HttpServletRequest request,ModelAndView modelAndView){
		modelAndView.setViewName("chitInput/detail");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/insertSal")
	public @ResponseBody ResponseEntity<String> insertSal(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params, @RequestParam(value="detailDate") List<String> date
			, @RequestParam(value="detailName") List<String> name, @RequestParam(value="detailStan") List<String> stan,
			@RequestParam(value="detailAmnt") List<String> amnt, @RequestParam(value="detailPrice") List<String> price,
			@RequestParam(value="detailEtc") List<String> etc) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		HashMap<String, String> list = new HashMap<String, String>();
		String salNum = iChitInputService.insertSal(params);
		String res = null;
		for(int i = 0; i < date.size(); i++){
			if(date.get(i) != ""){
				list.put("salNum", salNum);
				list.put("date", date.get(i));
				list.put("name", name.get(i));
				list.put("stan", stan.get(i));
				list.put("amnt", amnt.get(i));
				list.put("price", price.get(i));
				list.put("etc", etc.get(i));
				res += iChitInputService.insertSalDetail(list);			
			}
		}
		
		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	
/*	@RequestMapping(value="/insertSalDetail")
	public @ResponseBody ResponseEntity<String> insertSalDetail(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam(value="detailDate") List<String> date
			, @RequestParam(value="detailName") List<String> name, @RequestParam(value="detailStan") List<String> stan,
			@RequestParam(value="detailAmnt") List<String> amnt, @RequestParam(value="detailPrice") List<String> price,
			@RequestParam(value="detailEtc") List<String> etc) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		String res = "";
		HashMap<String, String> list = new HashMap<String, String>();
		for(int i = 0; i < date.size(); i++){
			if(date.get(i) != ""){
				list.put("date", date.get(i));
				list.put("name", name.get(i));
				list.put("stan", stan.get(i));
				list.put("amnt", amnt.get(i));
				list.put("price", price.get(i));
				list.put("etc", etc.get(i));
				res += iChitInputService.insertSalDetail(list);			
			}
		}
		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}*/
}


