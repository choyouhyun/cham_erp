package com.spring.sample.web.financialStatement.dao;

import java.util.ArrayList;
import java.util.HashMap;

import javax.mail.search.IntegerComparisonTerm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class FinancialStatementDao implements IFinancialStatementDao{
	@Autowired SqlMapClient sqlMapClient;

	@Override
	public ArrayList<HashMap<String, String>> getTrial(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("financialStatement.getTrial", params);
	}

	@Override
	public ArrayList<HashMap<String, Integer>> getTotalMoney(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		HashMap<String, Integer> subDebMoney = new HashMap<String, Integer>();
		HashMap<String, Integer> subCreMoney = new HashMap<String, Integer>();
		ArrayList<HashMap<String, String>> chitSub = (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("financialStatement.getTotalMoney", params);
		
		for(int i = 0; i < chitSub.size(); i++){
			String[] sub = chitSub.get(i).get("DEPTH_FULLNO").split(",");
			System.out.println("계정 머니 DAO시작");
			subDebMoney.put("no_1", 20);
			System.out.println(subDebMoney.get("no_1"));
			System.out.println(subDebMoney.containsKey("no_1"));

			for(int j = 0; j < sub.length; j++){
				if(subDebMoney.containsKey("no_" + sub[j])){
					subDebMoney.put("no_" + sub[j], subDebMoney.get("no_" + sub[j]) + Integer.parseInt(String.valueOf(chitSub.get(i).get("DEB_MONEY"))));
				}else {
					subDebMoney.put("no_" + sub[j], Integer.parseInt(String.valueOf(chitSub.get(i).get("DEB_MONEY"))));
				}
				if(subCreMoney.containsKey("no_" + sub[j])){
					subCreMoney.put("no_" + sub[j], subCreMoney.get("no_" + sub[j]) + Integer.parseInt(String.valueOf(chitSub.get(i).get("CRE_MONEY"))));
				}else {
					subCreMoney.put("no_" + sub[j], Integer.parseInt(String.valueOf(chitSub.get(i).get("CRE_MONEY"))));
				}
			}
		}
		ArrayList<HashMap<String, Integer>> subMoney = new ArrayList<HashMap<String, Integer>>();
		subMoney.add(subDebMoney);
		subMoney.add(subCreMoney);
		System.out.println("계정 머니 DAO결과" + subMoney);
		return subMoney;
	}

	@Override
	public ArrayList<HashMap<String, Integer>> getTotalSub(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, Integer>>) sqlMapClient.queryForList("financialStatement.getTotalSub", params);
	}

	@Override
	public int getDepthMax(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (int) sqlMapClient.queryForObject("financialStatement.getDepthMax", params);

	}
	@Override
	public ArrayList<HashMap<String, String>> getIncomeData(HashMap<String, String> params) throws Throwable{
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("financialStatement.getIncomeData",params);

	}
	
}
