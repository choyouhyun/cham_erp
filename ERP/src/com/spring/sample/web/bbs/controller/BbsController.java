package com.spring.sample.web.bbs.controller;

import java.util.ArrayList;
import java.util.HashMap;
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

import com.spring.sample.common.bean.PagingBean;
import com.spring.sample.common.service.IPagingService;
import com.spring.sample.web.bbs.service.IBbsService;

@Controller
public class BbsController {
	 @Autowired
	 public IBbsService iBbsService;
	 
	 @Autowired
	 public IPagingService iPagingService;
		@RequestMapping(value="/bbsList")
		public ModelAndView bbsList(HttpServletRequest request,
									@RequestParam HashMap<String, String> params,
									HttpSession session,
									ModelAndView modelAndView)
									throws Throwable {



		      if(session.getAttribute("sMemNo")!=null){
					modelAndView.setViewName("bbs/bbsList");
			      }else{
			         modelAndView.setViewName("redirect:login");
			      }


			return modelAndView;
		}
		@RequestMapping(value= "/refreshList")
		public @ResponseBody ResponseEntity<String> refreshList(
				HttpServletRequest request,
				@RequestParam HashMap<String, String> params,
				ModelAndView modelAndView) throws Throwable {
			
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			if(params.get("cap")==null||params.get("cap")==""){
				params.put("bbsNo", "80");
				
			}
			
			PagingBean pb = iPagingService.getPageingBean(
					Integer.parseInt(params.get("page")), 
					iBbsService.getBbsCount(params));
			System.out.println(params);
			params.put("start", Integer.toString(pb.getStartCount()));
			params.put("end", Integer.toString(pb.getEndCount()));
			
			ArrayList<HashMap<String, String>> list
										= iBbsService.getBbs(params);
			
			modelMap.put("list", list);
			modelMap.put("pb", pb);
			
			HttpHeaders responseHeaders = new HttpHeaders();
			responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
			
			return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
											  responseHeaders, HttpStatus.CREATED);
			
		}
		@RequestMapping("/bbsWrite")
		public ModelAndView bbsWrite(HttpServletRequest request,
									HttpSession session,
									ModelAndView modelAndView) {
		      if(session.getAttribute("sMemNo")!=null){
					modelAndView.setViewName("bbs/bbsWrite");
			      }else{
			         modelAndView.setViewName("redirect:login");
			      }

			
			return modelAndView;
		}
		
		@RequestMapping(value = "/insertBbs")
		public @ResponseBody ResponseEntity<String> insertBbs(
				HttpServletRequest request,
				@RequestParam HashMap<String, String> params,
				ModelAndView modelAndView) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			if(params.get("cap")==null||params.get("cap")==""){
				params.put("bbsNo", "80");
			}
			String res = iBbsService.insertBbs(params);
			
			modelMap.put("res", res);
			
			HttpHeaders responseHeaders = new  HttpHeaders();
			responseHeaders.add("Content-Type", "text/json; charset=UTF-8" );
			
			return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
											  responseHeaders,HttpStatus.CREATED);
		}
		@RequestMapping(value="/bbsShow")
		public ModelAndView bbsShow(HttpServletRequest request,
									HttpSession session,
									@RequestParam HashMap<String, String> params,
									ModelAndView modelAndView) throws Throwable {
			int res = iBbsService.hitUp(params);
			HashMap<String, String> con
						= iBbsService.getBbsCon(params);


			modelAndView.addObject("con", con); //데이토 가져오기

		      if(session.getAttribute("sMemNo")!=null){
					modelAndView.setViewName("bbs/bbsShow"); 
			      }else{
			         modelAndView.setViewName("redirect:login");
			      }


			
			return modelAndView;
		}
		@RequestMapping(value = "/deleteBbs")
		public @ResponseBody ResponseEntity<String> deleteBbs(
				HttpServletRequest request,
				@RequestParam HashMap<String, String> params,
				ModelAndView modelAndView) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			int res = iBbsService.deleteBbs(params);
			
			modelMap.put("res", res);
			
			HttpHeaders responseHeaders = new  HttpHeaders();
			responseHeaders.add("Content-Type", "text/json; charset=UTF-8" );
			
			return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
											  responseHeaders,HttpStatus.CREATED);
		}
		@RequestMapping(value="/bbsUpdate")
		public ModelAndView bbsUpdate(HttpServletRequest request,
										HttpSession session,
										@RequestParam HashMap<String, String> params,
										ModelAndView modelAndView) throws Throwable {
			
			HashMap<String, String> con
						= iBbsService.getBbsCon(params);
			
			modelAndView.addObject("con", con); //데이터 가져오기
			
		      if(session.getAttribute("sMemNo")!=null){
					modelAndView.setViewName("bbs/bbsUpdate"); 
			      }else{
			         modelAndView.setViewName("redirect:login");
			      }

			return modelAndView;
		}
		@RequestMapping(value = "/updateBbs")
		public @ResponseBody ResponseEntity<String> updateBbs(
				HttpServletRequest request,
				@RequestParam HashMap<String, String> params,
				ModelAndView modelAndView) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			int res = iBbsService.updateBbs(params);
			
			modelMap.put("res", res);
			
			HttpHeaders responseHeaders = new  HttpHeaders();
			responseHeaders.add("Content-Type", "text/json; charset=UTF-8" );
			
			return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
											  responseHeaders,HttpStatus.CREATED);
		}
		
		@RequestMapping(value = "/hitUp")
		public @ResponseBody ResponseEntity<String> hitUp(
				HttpServletRequest request,
				@RequestParam HashMap<String, String> params,
				ModelAndView modelAndView) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			int res = iBbsService.hitUp(params);
			
			modelMap.put("res", res);
			
			HttpHeaders responseHeaders = new  HttpHeaders();
			responseHeaders.add("Content-Type", "text/json; charset=UTF-8" );
			
			return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
											  responseHeaders,HttpStatus.CREATED);
		}
}
