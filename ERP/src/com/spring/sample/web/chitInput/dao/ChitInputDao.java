package com.spring.sample.web.chitInput.dao;

import java.sql.SQLException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class ChitInputDao implements IChitInputDao{
	
	@Autowired public SqlMapClient sqlMapClient;

	@Override
	public String insertSal(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		
		sqlMapClient.startTransaction();;// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			sqlMapClient.insert("ChitInput.insertSal", params);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); // 적용을 해준다
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		sqlMapClient.endTransaction();
		return (String)sqlMapClient.queryForObject("ChitInput.getSalLastNum");
	}

	@Override
	public String insertSalDetail(HashMap<String, String> list) throws Throwable {
		// TODO Auto-generated method stub
		String res = "false";
		sqlMapClient.startTransaction();;// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			sqlMapClient.insert("ChitInput.insertSalDetail", list);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); // 적용을 해준다
			res = "true";
		} catch (Exception e) {
			e.printStackTrace();
			res = "false";
		}
		
		sqlMapClient.endTransaction();
		return res;
	}

	@Override
	public String insertInc(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		sqlMapClient.startTransaction();;// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			System.out.println(params);
			sqlMapClient.insert("ChitInput.insertInc", params);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); // 적용을 해준다
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		sqlMapClient.endTransaction();
		return (String)sqlMapClient.queryForObject("ChitInput.getIncLastNum");
	}

	@Override
	public String insertIncDetail(HashMap<String, String> list) throws Throwable {
		// TODO Auto-generated method stub
		String res = "false";
		sqlMapClient.startTransaction();;// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			sqlMapClient.insert("ChitInput.insertIncDetail", list);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); // 적용을 해준다
			res = "true";
		} catch (Exception e) {
			e.printStackTrace();
			res = "false";
		}
		
		sqlMapClient.endTransaction();
		return res;
	}

	@Override
	public String insertOthSal(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		sqlMapClient.startTransaction();;// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			sqlMapClient.insert("ChitInput.insertOthSal", params);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); // 적용을 해준다
			
		} catch (Exception e) {
			e.printStackTrace();
	}
		
		sqlMapClient.endTransaction();
		return (String)sqlMapClient.queryForObject("ChitInput.getOthSalLastNum");	}

	@Override
	public String insertOthSalDetail(HashMap<String, String> list) throws Throwable {
		// TODO Auto-generated method stub
		String res = "false";
		sqlMapClient.startTransaction();;// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			sqlMapClient.insert("ChitInput.insertOthSalDetail", list);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); // 적용을 해준다
			res = "true";
		} catch (Exception e) {
			e.printStackTrace();
			res = "false";
		}
		
		sqlMapClient.endTransaction();
		return res;
	}

	@Override
	public String insertOthInc(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		sqlMapClient.startTransaction();;// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			sqlMapClient.insert("ChitInput.insertOthInc", params);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); // 적용을 해준다
			
		} catch (Exception e) {
			e.printStackTrace();
	}
		
		sqlMapClient.endTransaction();
		return (String)sqlMapClient.queryForObject("ChitInput.getOthIncLastNum");	}

	@Override
	public String insertOthIncDetail(HashMap<String, String> list) throws Throwable {
		// TODO Auto-generated method stub
		String res = "false";
		sqlMapClient.startTransaction();;// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			sqlMapClient.insert("ChitInput.insertOthIncDetail", list);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); // 적용을 해준다
			res = "true";
		} catch (Exception e) {
			e.printStackTrace();
			res = "false";
		}
		
		sqlMapClient.endTransaction();
		return res;
	}
}
