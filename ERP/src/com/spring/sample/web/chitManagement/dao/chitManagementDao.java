package com.spring.sample.web.chitManagement.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class chitManagementDao implements IchitManagementDao{
	
	@Autowired public SqlMapClient sqlMapClient;

	@Override
	public String insertSalRe(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		sqlMapClient.startTransaction();;// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			sqlMapClient.insert("chitManagement.insertSalRe", params);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); // 적용을 해준다
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		sqlMapClient.endTransaction();
		return (String)sqlMapClient.queryForObject("chitManagement.getSalReLastNum");	}
	
	@Override
	public String insertSalReDetail(HashMap<String, String> list) throws Throwable {
		// TODO Auto-generated method stub
		String res = "false";
		sqlMapClient.startTransaction();;// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			sqlMapClient.insert("chitManagement.insertSalReDetail", list);
			
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
	public ArrayList<HashMap<String, String>> GetSal_Re(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("chitManagement.GetSal_Re", params);
	}

	@Override
	public void updateSalRe(HashMap<String, String> params) throws Throwable {
		sqlMapClient.update("chitManagement.updateSalRe", params);
		
	}

	@Override
	public HashMap<String, String> GetSal_Re_Obj(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>) sqlMapClient.queryForObject("chitManagement.GetSal_Re_Obj", params);
	}

	@Override
	public ArrayList<HashMap<String, String>> GetSal_Re_Det(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("chitManagement.GetSal_Re_Det", params);
	}

	@Override
	public int updateSalReDetail(HashMap<String, String> list) throws Throwable {
		// TODO Auto-generated method stub
		HashMap<String, String> num =(HashMap<String, String>)sqlMapClient.queryForObject("chitManagement.detCheck", list);
		list.put("num", String.valueOf(num.get("NO")));
		System.out.println(list.get("num"));
		return sqlMapClient.update("chitManagement.updateSalReDetail", list);
	}

	@Override
	public String insertSign(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		String res="false";
		sqlMapClient.startTransaction();
						//┌사용 이유 데이터가 10만 100만 될때, 
						//쓸때 안쓸때 차이점 
						//안쓰면 쿼리를 한개씩 날려보냄 
						//사용하면 쿼리를 한번에 모아서 날려보낸다.
		sqlMapClient.startBatch();
		try{
			sqlMapClient.insert("chitManagement.insertSign",params);
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction();
							//└적용되는 부분
			res="true";
		}catch(Exception e){
			res="false";
			e.printStackTrace();
		}
		sqlMapClient.endTransaction();
		return res;
	}

	@Override
	public int getSalReCount(HashMap<String, String> params) throws Throwable{
		// TODO Auto-generated method stub
		return (int) sqlMapClient.queryForObject("chitManagement.getSalReCount",params);
	}

	
}
