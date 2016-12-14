package com.spring.sample.web.basicManagement.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class BasicManagementDao implements IBasicManagementDao{
	@Autowired
	public SqlMapClient sqlMapClient;
	
	@Override
	public ArrayList<HashMap<String, String>> cusCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("BasicManagement.cusCon", params);
	}

	@Override
	public int getCusCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (int) sqlMapClient.queryForObject("BasicManagement.getCusCount");
	}

	@Override
	public String insertCus(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		String res = "false";
		
		sqlMapClient.startTransaction();// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			sqlMapClient.insert("BasicManagement.insertCus", params);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); // 적용을 해준다
			
			res = "true";
		} catch (Exception e) {
			res = "false";
			e.printStackTrace();
		}
		
		sqlMapClient.endTransaction();
		return res;
	}

	@Override
	public HashMap<String, String> getCus(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>) sqlMapClient.queryForObject("BasicManagement.getCus", params);
	}

	@Override
	public int updateCus(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlMapClient.update("BasicManagement.updateCus", params);
	}

	@Override
	public ArrayList<HashMap<String, String>> deptAjax(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("BasicManagement.deptAjax", params);
	}

	@Override
	public int getDeptCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (int) sqlMapClient.queryForObject("BasicManagement.getDeptCount", params);
	}

	@Override
	public String insertDept(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		String res = "false";
		
		sqlMapClient.startTransaction();// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			sqlMapClient.insert("BasicManagement.insertDept", params);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); // 적용을 해준다
			
			res = "true";
		} catch (Exception e) {
			res = "false";
			e.printStackTrace();
		}
		
		sqlMapClient.endTransaction();
		return res;
	}

	@Override
	public HashMap<String, String> getDeptCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>) sqlMapClient.queryForObject("BasicManagement.getDeptCon", params);
	}

	@Override
	public int updateDept(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlMapClient.update("BasicManagement.updateDept", params);
	}

	@Override
	public ArrayList<HashMap<String, String>> rankAjax(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("BasicManagement.rankAjax", params);
	}

	@Override
	public int getRankCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (int) sqlMapClient.queryForObject("BasicManagement.getRankCount", params);
	}

	@Override
	public String insertAjax(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		String res = "false";
		
		sqlMapClient.startTransaction();// 여기서부터 트렌젝션을 시작하겠다
		sqlMapClient.startBatch();
		try {
			sqlMapClient.insert("BasicManagement.insertRank", params);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); // 적용을 해준다
			
			res = "true";
		} catch (Exception e) {
			res = "false";
			e.printStackTrace();
		}
		
		sqlMapClient.endTransaction();
		return res;
	}

	@Override
	public int deleteCus(String string) throws Throwable {
		// TODO Auto-generated method stub
		return sqlMapClient.delete("BasicManagement.deleteCus", string);
	}

	@Override
	public int deleteDept(String string) throws Throwable {
		// TODO Auto-generated method stub
		return sqlMapClient.delete("BasicManagement.deleteDept", string);
	}
	@Override
	public ArrayList<HashMap<String, String>> getSub() throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("BasicManagement.getSub");
	}
	
	@Override
	public HashMap<String, String> regSub(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>) sqlMapClient.queryForObject("BasicManagement.regSub",params);
	}
	
	@Override
	public String subInsert(HashMap<String, String> params) throws Throwable{
		// TODO Auto-generated method stub
		String res="false";
		sqlMapClient.startTransaction();
						//┌사용 이유 데이터가 10만 100만 될때, 
						//쓸때 안쓸때 차이점 
						//안쓰면 쿼리를 한개씩 날려보냄 
						//사용하면 쿼리를 한번에 모아서 날려보낸다.
		sqlMapClient.startBatch();
		try{
			sqlMapClient.insert("BasicManagement.subInsert",params);
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
	public int subUpdate(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlMapClient.update("BasicManagement.subUpdate",params);
	}
	@Override
	public int subDelete(String string) throws Throwable {
		// TODO Auto-generated method stub
		return sqlMapClient.delete("BasicManagement.subDelete",string);
	}
	//회사 업데이트
	@Override
	public void ComUpdate(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		sqlMapClient.update("BasicManagement.ComUpdate",params);
	}
	//회사 등록
	@Override
	public String ComInsert(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		String res="false";
		sqlMapClient.startTransaction();
		sqlMapClient.startBatch();
		try{
			sqlMapClient.insert("BasicManagement.ComInsert",params);
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
	//회사데이터 가져오기
	@Override
	public HashMap<String, String> ComInfoGet() throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>) sqlMapClient.queryForObject("BasicManagement.ComInfoGet");
	}
}
