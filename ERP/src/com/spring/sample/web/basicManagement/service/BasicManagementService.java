package com.spring.sample.web.basicManagement.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.basicManagement.dao.IBasicManagementDao;

@Service
public class BasicManagementService implements IBasicManagementService{
	@Autowired
	public IBasicManagementDao iBasicManagementDao;
	
	@Override
	public ArrayList<HashMap<String, String>> cusCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.cusCon(params);
	}

	@Override
	public int getCusCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.getCusCount(params);
	}

	@Override
	public String insertCus(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.insertCus(params);
	}

	@Override
	public HashMap<String, String> getCus(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.getCus(params);
	}

	@Override
	public int updateCus(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.updateCus(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> deptAjax(HashMap<String, String> params) throws Throwable{
		// TODO Auto-generated method stub
		return iBasicManagementDao.deptAjax(params);
	}

	@Override
	public int getDeptCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.getDeptCount(params);
	}

	@Override
	public String insertDept(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.insertDept(params);
	}

	@Override
	public HashMap<String, String> getDeptCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.getDeptCon(params);
	}

	@Override
	public int updateDept(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.updateDept(params);
	}

	@Override
	public int getRankCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.getRankCount(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> rankAjax(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.rankAjax(params);
	}

	@Override
	public String insertRank(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.insertAjax(params);
	}

	@Override
	public int deleteCus(String string) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.deleteCus(string);
	}

	@Override
	public int deleteDept(String string) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.deleteDept(string);
	}

	@Override
	public ArrayList<HashMap<String, String>> getSub() throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.getSub();
	}

	@Override
	public HashMap<String, String> regSub(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.regSub(params);
	}

	@Override
	public String subInsert(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.subInsert(params);
	}

	@Override
	public int subUpdate(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.subUpdate(params);
	}

	@Override
	public int subDelete(String string) throws Throwable {
		// TODO Auto-generated method stub
		return iBasicManagementDao.subDelete(string);
	}
	@Override
	   public String getIdCheck(HashMap<String, String> params) throws Throwable {
	      // TODO Auto-generated method stub
	      return iBasicManagementDao.getIdCheck(params);
	      
	   }
	   //
	   @Override
	   public int getMemCount(HashMap<String, String> params) throws Throwable {
	      // TODO Auto-generated method stub
	      return iBasicManagementDao.getMemCount(params);
	   }
	   @Override
	   public ArrayList<HashMap<String, String>> memCon(HashMap<String, String> params) throws Throwable {
	      // TODO Auto-generated method stub
	      return iBasicManagementDao.memCon(params);
	   }

	   @Override
	   public String Meminsert(HashMap<String, String> params) throws Throwable {
	      // TODO Auto-generated method stub
	      return iBasicManagementDao.Meminsert(params);
	   }

	   @Override
	   public int updateMem(HashMap<String, String> params) throws Throwable {
	      // TODO Auto-generated method stub
	       return iBasicManagementDao.updateMem(params);
	   }

	   @Override
	   public HashMap<String, String> getMemList(HashMap<String, String> params) throws Throwable {
	      // TODO Auto-generated method stub
	      return iBasicManagementDao.getMemList(params);
	   }

	   @Override
	   public int delMem(String string) throws Throwable {
	      // TODO Auto-generated method stub
	      return iBasicManagementDao.delMem(string);
	   }
		@Override
		public HashMap<String, String> ComInfoGet() throws Throwable {
			// TODO Auto-generated method stub
			return iBasicManagementDao.ComInfoGet();
		}

		@Override
		public String ComInsert(HashMap<String, String> params) throws Throwable {
			// TODO Auto-generated method stub
			return iBasicManagementDao.ComInsert(params);
		}

		@Override
		public void ComUpdate(HashMap<String, String> params) throws Throwable {
			// TODO Auto-generated method stub
			iBasicManagementDao.ComUpdate(params);
		}
		@Override
		   public ArrayList<HashMap<String, String>> getTest(HashMap<String, String> params) throws Throwable {
		      return iBasicManagementDao.getTest(params);
		   }

		   @Override
		   public ArrayList<HashMap<String, String>> getList() throws Throwable {
		      return iBasicManagementDao.getList();
		   }

		   @Override
		   public int getTestCount(HashMap<String, String> params) throws Throwable {
		      // TODO Auto-generated method stub
		      return iBasicManagementDao.getTestCount(params);
		   }
		@Override
		   public String insertAcnt(HashMap<String, String> params) throws Throwable {
		      // TODO Auto-generated method stub
		      return iBasicManagementDao.insertAcnt(params);
		   }

		@Override
		public HashMap<String, String> getAcntNoCheck(HashMap<String, String> params) throws Throwable {
			// TODO Auto-generated method stub
			return iBasicManagementDao.getAcntNoCheck(params);
		}

		@Override
		public HashMap<String, String> getSubCheck(HashMap<String, String> params) throws Throwable {
			// TODO Auto-generated method stub
			return iBasicManagementDao.getSubCheck(params);
		}
	

}
