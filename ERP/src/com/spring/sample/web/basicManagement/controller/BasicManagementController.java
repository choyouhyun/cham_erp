package com.spring.sample.web.basicManagement.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
import com.spring.sample.web.basicManagement.service.IBasicManagementService;

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
	public @ResponseBody ResponseEntity<String> insertCus( //데이터를 가져가기위해 가상의 바디를 만들어 바디로서 인식시켜줌
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


		modelAndView.setViewName("basicManagement/CustomerEdit");
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

	//부서 리스트
	@RequestMapping(value="/deptList")
	public ModelAndView deptList(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params){

		modelAndView.setViewName("basicManagement/deptList");
		return modelAndView;
	}

	//부서리스트 Ajax
	@RequestMapping(value="/deptAjax")
	public @ResponseBody ResponseEntity<String> deptAjax (
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		PagingBean pb = iPagingService.getPageingBean(Integer.parseInt(params.get("page")),iBasicManagementService.getDeptCount(params)); 
		params.put("start", Integer.toString(pb.getStartCount()));                        
		params.put("end", Integer.toString(pb.getEndCount()));
		ArrayList<HashMap<String, String>> list = iBasicManagementService.deptAjax(params);
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}


	//부서등록
	@RequestMapping(value="/deptRegister")
	public ModelAndView deptRegister(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params){

		modelAndView.setViewName("basicManagement/deptRegister");
		return modelAndView;
	}

	//부서 등록 ajax
	@RequestMapping(value="/insertDept") 
	public @ResponseBody ResponseEntity<String> insertDept( //데이터를 가져가기위해 가상의 바디를 만들어 바디로서 인식시켜줌
			HttpServletRequest request,@RequestParam HashMap<String, String>params,  ModelAndView modelAndView) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();//ObjectMapper란 map타입을 json타입으로 만들어주는 기능
		Map<String, Object> modelMap = new HashMap<String, Object>();
		String res = iBasicManagementService.insertDept(params);

		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8"); //text/json 타입만을 받겠다
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}

	//부서 수정 가져오기 Ajax
	@RequestMapping(value="/getDeptCon")
	public @ResponseBody ResponseEntity<String> getDeptCon(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		HashMap<String, String> list = iBasicManagementService.getDeptCon(params);

		modelMap.put("list", list);

		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}


	//부서 수정 완료 Ajax
	@RequestMapping(value="/updateDept")
	public @ResponseBody ResponseEntity<String> updateDept(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params ) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();//ObjectMapper란 map타입을 json타입으로 만들어주는 기능
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		int res = iBasicManagementService.updateDept(params);

		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8"); //text/json 타입만을 받겠다
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}



	@RequestMapping(value="/test1pop")
	public ModelAndView test(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params){

		modelAndView.setViewName("basicManagement/test");
		return modelAndView;
	}

	@RequestMapping(value="/test2pop")
	public ModelAndView test2(
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params){

		modelAndView.setViewName("basicManagement/test2");
		return modelAndView;
	}

	//직책ajax
	@RequestMapping(value="/rankAjax")
	public @ResponseBody ResponseEntity<String> rankAjax (
			HttpServletRequest request, ModelAndView modelAndView, @RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		PagingBean pb = iPagingService.getPageingBean(Integer.parseInt(params.get("page")),iBasicManagementService.getRankCount(params)); 
		params.put("start", Integer.toString(pb.getStartCount()));                        
		params.put("end", Integer.toString(pb.getEndCount()));
		ArrayList<HashMap<String, String>> list = iBasicManagementService.rankAjax(params);
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}

	//직책입력
	@RequestMapping(value="/insertRank") 
	public @ResponseBody ResponseEntity<String> insertRank( //데이터를 가져가기위해 가상의 바디를 만들어 바디로서 인식시켜줌
			HttpServletRequest request,@RequestParam HashMap<String, String>params,  ModelAndView modelAndView) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();//ObjectMapper란 map타입을 json타입으로 만들어주는 기능
		Map<String, Object> modelMap = new HashMap<String, Object>();
		String res = iBasicManagementService.insertRank(params);

		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8"); //text/json 타입만을 받겠다
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}

	@RequestMapping(value="/deleteCus") 
	public @ResponseBody ResponseEntity<String> deleteCus( //데이터를 가져가기위해 가상의 바디를 만들어 바디로서 인식시켜줌
			HttpServletRequest request,  ModelAndView modelAndView,@RequestParam(value="deleteCheck") List<String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();//ObjectMapper란 map타입을 json타입으로 만들어주는 기능
		Map<String, Object> modelMap = new HashMap<String, Object>();
		int res = 0;
		System.out.println(params);
		for(int i = 0; i < params.size(); i++){
			res += iBasicManagementService.deleteCus(params.get(i));
		}
		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8"); //text/json 타입만을 받겠다
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}

	@RequestMapping(value="/deleteDept") 
	public @ResponseBody ResponseEntity<String> deleteDept( //데이터를 가져가기위해 가상의 바디를 만들어 바디로서 인식시켜줌
			HttpServletRequest request,  ModelAndView modelAndView,@RequestParam(value="deleteCheck") List<String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();//ObjectMapper란 map타입을 json타입으로 만들어주는 기능
		Map<String, Object> modelMap = new HashMap<String, Object>();
		int res = 0;
		System.out.println(params);
		for(int i = 0; i < params.size(); i++){
			res += iBasicManagementService.deleteDept(params.get(i));
		}
		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8"); //text/json 타입만을 받겠다
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}

	@RequestMapping(value="/SubjectList")
	public ModelAndView NewFile(HttpServletRequest request,@RequestParam HashMap<String, String> params, ModelAndView modelAndView)
			throws Throwable{
		modelAndView.setViewName("Subject/SubjectList");
		return modelAndView;
	}
	@RequestMapping(value="/subList") 
	public @ResponseBody ResponseEntity<String> subList(
			HttpServletRequest request,@RequestParam HashMap<String, String> params,ModelAndView modelAndView) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		ArrayList<HashMap<String, String>> list = iBasicManagementService.getSub();
		modelMap.put("list", list);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8"); //text/json 타입만을 받겠다
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	@RequestMapping(value="/SubjectRegister")
	public ModelAndView NewFile1(HttpServletRequest request,@RequestParam HashMap<String, String> params, ModelAndView modelAndView)
			throws Throwable{
		if(params.get("NO2")!=null){
			modelAndView.addObject("params", params);
		}
		modelAndView.setViewName("basicManagement/SubjectRegister");
		return modelAndView;
	}
	@RequestMapping(value="/subInput") 
	public @ResponseBody ResponseEntity<String> subInput( //데이터를 가져가기위해 가상의 바디를 만들어 바디로서 인식시켜줌
			HttpServletRequest request,@RequestParam HashMap<String, String> params,ModelAndView modelAndView) throws Throwable {
		//└HTTP 요청 파라미터를 메서드의 파라미터로 전달받을 때 사용
		ObjectMapper mapper = new ObjectMapper();//ObjectMapper란 map타입을 json타입으로 만들어주는 기능
		Map<String, Object> modelMap = new HashMap<String, Object>();
		ArrayList<HashMap<String, String>> list = iBasicManagementService.getSub();
		modelMap.put("list", list);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8"); //text/json 타입만을 받겠다
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	@RequestMapping(value="/subInsert") 
	public @ResponseBody ResponseEntity<String> subReg( 
			HttpServletRequest request,@RequestParam HashMap<String, String> params,ModelAndView modelAndView) throws Throwable {	   									//└HTTP 요청 파라미터를 메서드의 파라미터로 전달받을 때 사용
		HashMap<String, String> con = iBasicManagementService.regSub(params);
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		params.put("depth",String.valueOf(con.get("DEPTH")));
		params.put("subSec",String.valueOf(con.get("SUBSEC")));
		//┌true and false
		String res=iBasicManagementService.subInsert(params);
		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	@RequestMapping(value="/subUpdate") 
	public @ResponseBody ResponseEntity<String> subUpdate( 
			HttpServletRequest request,@RequestParam HashMap<String, String> params,ModelAndView modelAndView) throws Throwable {	   									//└HTTP 요청 파라미터를 메서드의 파라미터로 전달받을 때 사용
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		int res=iBasicManagementService.subUpdate(params);
		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	@RequestMapping(value="/checkDelete") 
	public @ResponseBody ResponseEntity<String> checkDelete( 
			HttpServletRequest request,
			@RequestParam(value="checkBox") List<String> checkBoxList,
			ModelAndView modelAndView) throws Throwable {
		//└HTTP 요청 파라미터를 메서드의 파라미터로 전달받을 때 사용
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		int res=0;
		for(int i = 0 ; i < checkBoxList.size() ; i++) {
			System.out.println(checkBoxList);
			res += iBasicManagementService.subDelete(checkBoxList.get(i));
		}
		modelMap.put("res", res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	//회사 등록 페이지 열기
	@RequestMapping(value="/ComInfo")
	   public ModelAndView ComInfo(HttpServletRequest request,@RequestParam HashMap<String, String> params, ModelAndView modelAndView)
			   throws Throwable{
		   modelAndView.setViewName("basicManagement/Company/ComInfo");
		   return modelAndView;
	   }
	//회사정보 읽어오기
	   @RequestMapping(value="/ComInfoGet") 
	   public @ResponseBody ResponseEntity<String> ComInfoGet( 
		         HttpServletRequest request,ModelAndView modelAndView) throws Throwable {	   									//└HTTP 요청 파라미터를 메서드의 파라미터로 전달받을 때 사용
		   HashMap<String, String> con = iBasicManagementService.ComInfoGet();
		   ObjectMapper mapper = new ObjectMapper();
		   Map<String, Object> modelMap = new HashMap<String, Object>();
		   modelMap.put("con", con);
		   HttpHeaders responseHeaders = new HttpHeaders();
		   responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		   return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	   }
	 // 회사 등록
	   @RequestMapping(value="/ComInsert") 
	   public @ResponseBody ResponseEntity<String> ComInsert( 
			   HttpServletRequest request,@RequestParam HashMap<String, String> params,ModelAndView modelAndView) throws Throwable {	   									//└HTTP 요청 파라미터를 메서드의 파라미터로 전달받을 때 사용
		   ObjectMapper mapper = new ObjectMapper();
		   Map<String, Object> modelMap = new HashMap<String, Object>();
		   System.out.println(params);
		   String res="";
		   if(params.get("reg_up")==""){
			   res=iBasicManagementService.ComInsert(params);
		   }else {
			   iBasicManagementService.ComUpdate(params);
		   }
		   modelMap.put("res", res);
		   HttpHeaders responseHeaders = new HttpHeaders();
		   responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		   return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	   }
}
