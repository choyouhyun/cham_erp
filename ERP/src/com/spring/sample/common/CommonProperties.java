package com.spring.sample.common;

public class CommonProperties {
	/**
	 * 기본 셋
	 */
	//기본 리스트 사이즈
	public static final int VIEWCOUNT = 15;
	//기본 페이지 사이즈
	public static final int PAGECOUNT = 5;
	//검색 기준일
	public static final int SEARCHDATEAREA = 30;
	
	/**
	 * Ajax Result
	 */
	public static final String RESULT_SUCCESS = "SUCCESS";
	
	public static final String RESULT_ERROR = "ERROR";
	
	/**
	 * 파일 업로드
	 */
	//파일 업로드 경로
	public static final String FILE_UPLOAD_PATH = "C:\\Users\\student\\git\\cham_erp\\ERP\\WebContent\\resources\\upload";
	
	//사원 사진 업로드 경로
	public static final String MEMIMG_UPLOAD_PATH = "C:\\Users\\student\\git\\cham_erp\\ERP\\WebContent\\resources\\images\\memImg";
	//파일 다운로드 경로
	public static final String FILE_DOWNLOAD_PATH = "http://localhost:8080/location";
	
	//허용파일 확장자
	public static final String FILE_EXT = "xls|ppt|doc|xlsx|pptx|docx|hwp|csv|jpg|png|tld|txt";
	//허용 사원사진 확장자
	public static final String MEMIMG_EXT = "jpg|png";
}
