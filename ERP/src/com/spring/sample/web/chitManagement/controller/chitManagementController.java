package com.spring.sample.web.chitManagement.controller;

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

import com.spring.sample.common.bean.PagingBean;
import com.spring.sample.common.service.IPagingService;
import com.spring.sample.web.chitManagement.service.IchitManagementService;

@Controller
public class chitManagementController {
	@Autowired 
	public IchitManagementService ichitManagementService;
	@Autowired
	public IPagingService iPagingService;
	
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
		PagingBean pb = iPagingService.getPageingBean(Integer.parseInt(params.get("page")),ichitManagementService.getchitCount(params)); 
		params.put("start", Integer.toString(pb.getStartCount()));                        
		params.put("end", Integer.toString(pb.getEndCount()));
		ArrayList<HashMap<String, String>> list = ichitManagementService.chitCon(params);

		modelMap.put("list", list);
		modelMap.put("pb", pb);
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
/*-----------------------------------------------------------------------*/
	@RequestMapping(value="/salReInput")
	public ModelAndView salReInput(HttpServletRequest request,ModelAndView modelAndView, HttpSession session){
		
		modelAndView.setViewName("chitInput/salReInput");
		return modelAndView;
	}
	
	//기타 입금 전표입력 insert
	@RequestMapping(value="/insertSalRe")
	public @ResponseBody ResponseEntity<String> insertSalRe(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params, @RequestParam(value="detailDate") List<String> date
			, @RequestParam(value="detailName") List<String> name, @RequestParam(value="detailStan") List<String> stan,
			@RequestParam(value="detailAmnt") List<String> amnt, @RequestParam(value="detailPrice") List<String> price,
			@RequestParam(value="detailEtc") List<String> etc) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		HashMap<String, String> list = new HashMap<String, String>();
		String salNum = ichitManagementService.insertSalRe(params);
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
				res += ichitManagementService.insertSalReDetail(list);			
			}
		}
		
		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	@RequestMapping(value="/salReList")
	public ModelAndView salReList(HttpServletRequest request,ModelAndView modelAndView, HttpSession session){
		
		modelAndView.setViewName("chitInput/salReList");
		return modelAndView;
	}
	@RequestMapping(value="/salReSign")
	public ModelAndView salReSign(HttpServletRequest request,ModelAndView modelAndView, HttpSession session){
		
		modelAndView.setViewName("chitInput/salReSign");
		return modelAndView;
	}
	@RequestMapping(value="/GetSal_Re")
	public @ResponseBody ResponseEntity<String> GetSal_Re(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		PagingBean pb = iPagingService.getPageingBean(Integer.parseInt(params.get("page")),ichitManagementService.getSalReCount(params)); 
		params.put("start", Integer.toString(pb.getStartCount()));                        
		params.put("end", Integer.toString(pb.getEndCount()));
		ArrayList<HashMap<String, String>> list = ichitManagementService.GetSal_Re(params);

		modelMap.put("list", list);
		modelMap.put("pb", pb);
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	
	@RequestMapping(value="/updateSalRe")
	public @ResponseBody ResponseEntity<String> updateSalRe(HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params, @RequestParam(value="detailDate") List<String> date
			, @RequestParam(value="detailName") List<String> name, @RequestParam(value="detailStan") List<String> stan,
			@RequestParam(value="detailAmnt") List<String> amnt, @RequestParam(value="detailPrice") List<String> price,
			@RequestParam(value="detailEtc") List<String> etc) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		HashMap<String, String> list = new HashMap<String, String>();
		ichitManagementService.updateSalRe(params);
		
		int res = 0;
		list.put("salNum", params.get("no"));
		for(int i = 0; i < date.size(); i++){
			if(date.get(i) != ""){
				list.put("i",Integer.toString(i+1));
				list.put("date", date.get(i));
				list.put("name", name.get(i));
				list.put("stan", stan.get(i));
				list.put("amnt", amnt.get(i));
				list.put("price", price.get(i));
				list.put("etc", etc.get(i));
				
				res += ichitManagementService.updateSalReDetail(list);		
			}
		}
		
		
		/*modelMap.put("res", res);*/
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8"); //text/json 타입만을 받겠다
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);

	}
	@RequestMapping(value="/GetSal_Re_Det")
	public @ResponseBody ResponseEntity<String> GetSal_Re_Det(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		HashMap<String, String> con = ichitManagementService.GetSal_Re_Obj(params);
		ArrayList<HashMap<String, String>> list = ichitManagementService.GetSal_Re_Det(params);
		modelMap.put("con", con);
		modelMap.put("list", list);
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	@RequestMapping(value="/insertSign")
	public @ResponseBody ResponseEntity<String> insertSign(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		String res = ichitManagementService.insertSign(params);
		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	
	
}
