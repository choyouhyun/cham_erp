package com.spring.sample.web.login.controller;

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

import com.spring.sample.common.service.IPagingService;
import com.spring.sample.web.login.service.ILoginService;

@Controller //컨트롤러를 만들때 나는 컨트롤러다 라고 선언하여 줌
public class LoginController {
	@Autowired
	public ILoginService iLoginService;
	
	@Autowired
	public IPagingService iPagingService;
	
	@RequestMapping(value="/login")
	   public ModelAndView login1(HttpServletRequest request,HttpSession session, ModelAndView modelAndView){
	      if(session.getAttribute("sMemNo")!=null){
	         modelAndView.setViewName("redirect:main");
	      }else{
	         modelAndView.setViewName("login/login");
	      }
	      return modelAndView;
	   }
	   @RequestMapping(value="/main")
	   public ModelAndView Main(HttpServletRequest request,HttpSession session, ModelAndView modelAndView){
	      if(session.getAttribute("sMemNo")!=null){
	         modelAndView.setViewName("Main/main");
	      }else{
	         modelAndView.setViewName("redirect:login");
	      }
	      return modelAndView;
	   }            
	   @RequestMapping(value="/LoginCheckAjax") 
	   public @ResponseBody ResponseEntity<String> LoginCheckAjax( 
	         HttpServletRequest request,@RequestParam HashMap<String, String> params,
	         HttpSession session,ModelAndView modelAndView) throws Throwable {
	            //└사용자 별 임시 공간(캐시랑 비슷) 시간이 지나면 사라진다. 사용하는곳: 로그인 유지
	               //└사용자:브라우저,IP,MAC address등 사용자를 특정할수 있는것
	      ObjectMapper mapper = new ObjectMapper();
	      Map<String, Object> modelMap = new HashMap<String, Object>();
	      HashMap<String,String>mem=iLoginService.getMem(params);
	      if(mem!=null&&!mem.isEmpty()){
	         session.setAttribute("sMemNo", mem.get("NO"));
	         session.setAttribute("sMemId", mem.get("ID"));
	         session.setAttribute("sMemNm", mem.get("NAME"));
	         session.setAttribute("sMemDn", mem.get("DEPT_NO"));
	                  //└임시공간에 집어넣는다.
	         modelMap.put("res","sucess");
	      }else{
	         modelMap.put("res", "fail");
	      }
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("Content-Type", "text/json; charset=UTF-8"); 
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	   }
	   @RequestMapping(value="/Logout")
	   public ModelAndView Logout(HttpServletRequest request,HttpSession session, ModelAndView modelAndView){
	      session.invalidate();
	                  //└세션을 초기화 하겠다.
	      modelAndView.setViewName("redirect:login");
	                           //└다시 보내다. :url 에서 url로 이동 즉 , 컨트롤러에서 컨트롤러로 이동한다.
	                           //└단점: get방식이기에 데이터를 보내면 주소창에 나오게 된다. 단순 이동시에만 사용
	      return modelAndView;
	   }
}