package com.spring.sample.web.chitInput.controller;


import java.io.Console;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	//매출 전표입력
	@RequestMapping(value="/salChitInput")
	public ModelAndView salchitinput(HttpServletRequest request,ModelAndView modelAndView, HttpSession session){
		
		modelAndView.setViewName("chitInput/salChitInput");
		return modelAndView;
	}
	
	//매출 전표입력 insert
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
	
	//매입 전표 입력
	@RequestMapping(value="/incChitInput")
	public ModelAndView incChitInput(HttpServletRequest request,ModelAndView modelAndView, HttpSession session){
		
		modelAndView.setViewName("chitInput/incChitInput");
		return modelAndView;
	}
	
	//매입 전표 입력 insert
	@RequestMapping(value="/insertInc")
	public @ResponseBody ResponseEntity<String> insertInc(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params, @RequestParam(value="detailDate") List<String> date
			, @RequestParam(value="detailName") List<String> name, @RequestParam(value="detailStan") List<String> stan,
			@RequestParam(value="detailAmnt") List<String> amnt, @RequestParam(value="detailPrice") List<String> price,
			@RequestParam(value="detailEtc") List<String> etc) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		HashMap<String, String> list = new HashMap<String, String>();
		System.out.println(params);
		String salNum = iChitInputService.insertInc(params);
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
				res += iChitInputService.insertIncDetail(list);			
			}
		}
		
		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	
	//기타 입금 전표입력
	@RequestMapping(value="/othSalChitInput")
	public ModelAndView othSalChitInput(HttpServletRequest request,ModelAndView modelAndView, HttpSession session){
		
		modelAndView.setViewName("chitInput/othSalChitInput");
		return modelAndView;
	}
	
	//기타 입금 전표입력 insert
	@RequestMapping(value="/insertOthSal")
	public @ResponseBody ResponseEntity<String> insertOthSal(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params, @RequestParam(value="detailDate") List<String> date
			, @RequestParam(value="detailName") List<String> name, @RequestParam(value="detailStan") List<String> stan,
			@RequestParam(value="detailAmnt") List<String> amnt, @RequestParam(value="detailPrice") List<String> price,
			@RequestParam(value="detailEtc") List<String> etc) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		HashMap<String, String> list = new HashMap<String, String>();
		String salNum = iChitInputService.insertOthSal(params);
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
				res += iChitInputService.insertOthSalDetail(list);			
			}
		}
		
		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	
	@RequestMapping(value="/othIncChitInput")
	public ModelAndView IncSalInput(HttpServletRequest request,ModelAndView modelAndView, HttpSession session){
		
		modelAndView.setViewName("chitInput/othIncChitInput");
		return modelAndView;
	}
	
	@RequestMapping(value="/insertOthInc")
	public @ResponseBody ResponseEntity<String> insertOthInc(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params, @RequestParam(value="detailDate") List<String> date
			, @RequestParam(value="detailName") List<String> name, @RequestParam(value="detailStan") List<String> stan,
			@RequestParam(value="detailAmnt") List<String> amnt, @RequestParam(value="detailPrice") List<String> price,
			@RequestParam(value="detailEtc") List<String> etc) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		HashMap<String, String> list = new HashMap<String, String>();
		String salNum = iChitInputService.insertOthInc(params);
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
				res += iChitInputService.insertOthIncDetail(list);			
			}
		}
		
		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	
	@RequestMapping(value="/getchit")
	public @ResponseBody ResponseEntity<String> getchit(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		HashMap<String, String> list = iChitInputService.getchit(params);

		modelMap.put("list", list);

		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}


	//거래처 수정 완료 Ajax
	@RequestMapping(value="/updatechit")
	public @ResponseBody ResponseEntity<String> updatechit(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params ) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();//ObjectMapper란 map타입을 json타입으로 만들어주는 기능
		Map<String, Object> modelMap = new HashMap<String, Object>();
		System.out.println(params);
		int res = iChitInputService.updatechit(params);

		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8"); //text/json 타입만을 받겠다
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);

	}
	
}


