package com.spring.sample.web.chitManagement.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChitManagementController {
	@RequestMapping(value="/cusLedSearch")
	   public ModelAndView cusLedSearch(HttpServletRequest request,@RequestParam HashMap<String, String> params, ModelAndView modelAndView)
			   throws Throwable{
		   modelAndView.setViewName("chitManagement/cusLedSearch");
		   return modelAndView;
	   }
	   @RequestMapping(value="/cusLed")
	   public ModelAndView cusLed(HttpServletRequest request,@RequestParam HashMap<String, String> params, ModelAndView modelAndView)
			   throws Throwable{
		   modelAndView.setViewName("chitManagement/cusLed");
		   return modelAndView;
	   }
	   @RequestMapping(value="/subLed")
	   public ModelAndView subLed(HttpServletRequest request,@RequestParam HashMap<String, String> params, ModelAndView modelAndView)
			   throws Throwable{
		   modelAndView.setViewName("chitManagement/subLed");
		   return modelAndView;
	   }
	   @RequestMapping(value="/incSalSearch")
	   public ModelAndView incSalSearch(HttpServletRequest request,@RequestParam HashMap<String, String> params, ModelAndView modelAndView)
			   throws Throwable{
		   modelAndView.setViewName("chitManagement/incSalSearch");
		   return modelAndView;
	   }
	   @RequestMapping(value="/incSal")
	   public ModelAndView incSal(HttpServletRequest request,@RequestParam HashMap<String, String> params, ModelAndView modelAndView)
			   throws Throwable{
		   modelAndView.setViewName("chitManagement/incSal");
		   return modelAndView;
	   }
	   @RequestMapping(value="/chit")
	   public ModelAndView chit(HttpServletRequest request,@RequestParam HashMap<String, String> params, ModelAndView modelAndView)
			   throws Throwable{
		   modelAndView.setViewName("chitManagement/chit");
		   return modelAndView;
	   }
	   @RequestMapping(value="/chitSign")
	   public ModelAndView chitSign(HttpServletRequest request,@RequestParam HashMap<String, String> params, ModelAndView modelAndView)
			   throws Throwable{
		   modelAndView.setViewName("chitManagement/chitSign");
		   return modelAndView;
	   }
	   @RequestMapping(value="/subLedSearch")
	   public ModelAndView subLedSearch(HttpServletRequest request,@RequestParam HashMap<String, String> params, ModelAndView modelAndView)
			   throws Throwable{
		   modelAndView.setViewName("chitManagement/subLedSearch");
		   return modelAndView;
	   }
	   @RequestMapping(value="/deptSearch")
	   public ModelAndView deptSearch(HttpServletRequest request,@RequestParam HashMap<String, String> params, ModelAndView modelAndView)
			   throws Throwable{
		   modelAndView.setViewName("chitManagement/deptSearch");
		   return modelAndView;
	   }
	   @RequestMapping(value="/subSearch")
	   public ModelAndView subSearch(HttpServletRequest request,@RequestParam HashMap<String, String> params, ModelAndView modelAndView)
			   throws Throwable{
		   modelAndView.setViewName("chitManagement/subSearch");
		   return modelAndView;
	   }
}
