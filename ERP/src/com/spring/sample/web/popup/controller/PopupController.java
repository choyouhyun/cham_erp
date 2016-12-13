package com.spring.sample.web.popup.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PopupController {
	
	@RequestMapping(value="/popup")
	public ModelAndView calendarSelect(HttpServletRequest request, ModelAndView modelAndView) {
		
		modelAndView.setViewName("popup/popup");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/deptPopup")
	public ModelAndView deptPopup(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params){
		
		modelAndView.setViewName("popup/deptPopup");
		return modelAndView;
	}
	
	@RequestMapping(value="/customerPopup")
	public ModelAndView customerPopup(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params){
		
		modelAndView.setViewName("popup/customerPopup");
		return modelAndView;
	}
	
	@RequestMapping(value="/rankPopup")
	public ModelAndView rankPopup(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params){
		
		modelAndView.setViewName("popup/rankPopup");
		return modelAndView;
	}
	
	@RequestMapping(value="/rankRegister")
	public ModelAndView rankRegister(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params){
		
		modelAndView.setViewName("popup/rankRegister");
		return modelAndView;
	}
	
	@RequestMapping(value="/subjectPopup")
	public ModelAndView SubjectPopup(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params){
		
		modelAndView.setViewName("popup/subjectPopup");
		return modelAndView;
	}
	
}
