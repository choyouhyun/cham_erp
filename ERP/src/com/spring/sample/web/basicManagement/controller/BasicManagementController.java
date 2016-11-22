package com.spring.sample.web.basicManagement.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BasicManagementController {
	   @RequestMapping(value="/test")
	   public ModelAndView Test(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/basicManagement");
	      return modelAndView;
	   } //컨트롤러의 가장 기본적인 형태
}
