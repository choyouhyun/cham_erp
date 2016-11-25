package com.spring.sample.web.basicManagement.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BasicManagementController {
	   @RequestMapping(value="/BankList")
	   public ModelAndView BankList(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Bank/BankList");
	      return modelAndView;
	   } //컨트롤러의 가장 기본적인 형태
	   @RequestMapping(value="/BankRegister")
	   public ModelAndView BankRegister(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Bank/BankRegister");
	      return modelAndView;
	   }
	   @RequestMapping(value="/CompanyRegister")
	   public ModelAndView CompanyRegister(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Company/CompanyRegister");
	      return modelAndView;
	   }
	   @RequestMapping(value="/CustomerList")
	   public ModelAndView CustomerListt(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Customer/CustomerList");
	      return modelAndView;
	   }
	   @RequestMapping(value="/CustomerRegister")
	   public ModelAndView CustomerRegister(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Customer/CustomerRegister");
	      return modelAndView;
	   }
	   @RequestMapping(value="/DeptCode")
	   public ModelAndView DeptCode(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Dept/DeptCode");
	      return modelAndView;
	   }
	   @RequestMapping(value="/DeptList")
	   public ModelAndView DeptList(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Dept/DeptList");
	      return modelAndView;
	   }
	   @RequestMapping(value="/DeptRegister")
	   public ModelAndView DeptRegister(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Dept/DeptRegister");
	      return modelAndView;
	   }
	   @RequestMapping(value="/GroupCodeRegister")
	   public ModelAndView GroupCodeRegister(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement//GroupCode/GroupCodeRegister");
	      return modelAndView;
	   }
	   @RequestMapping(value="/ItemList")
	   public ModelAndView ItemList(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Item/ItemList");
	      return modelAndView;
	   }
	   @RequestMapping(value="/ItemRegister")
	   public ModelAndView ItemRegister(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Item/ItemRegister");
	      return modelAndView;
	   }
	   @RequestMapping(value="/JoinCompany")
	   public ModelAndView JoinCompany(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Member/JoinCompany");
	      return modelAndView;
	   }
	   @RequestMapping(value="/MemList")
	   public ModelAndView MemList(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Member/MemList");
	      return modelAndView;
	   }
	   @RequestMapping(value="/MemPosition")
	   public ModelAndView MemPosition(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Member/MemPosition");
	      return modelAndView;
	   }
	   @RequestMapping(value="/MemRank")
	   public ModelAndView MemRank(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Member/MemRank");
	      return modelAndView;
	   }
	   @RequestMapping(value="/MemRegister")
	   public ModelAndView MemRegister(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Member/MemRegister");
	      return modelAndView;
	   }
	   @RequestMapping(value="/SubjectSeach")
	   public ModelAndView SubjectSeach(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Subject/SubjectSeach");
	      return modelAndView;
	   }
	   @RequestMapping(value="/SubjectRegister")
	   public ModelAndView SubjectRegister(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Subject/SubjectRegister");
	      return modelAndView;
	   }
	   @RequestMapping(value="/SubjectList")
	   public ModelAndView SubjectList(HttpServletRequest request, ModelAndView modelAndView) {
		   
	      modelAndView.setViewName("basicManagement/Subject/SubjectList");
	      return modelAndView;
	   }
	   
}
