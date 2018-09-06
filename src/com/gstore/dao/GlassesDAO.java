package com.gstore.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.gstore.common.dao.BaseDAO;
import com.gstore.dao.po.Glasses;
import com.gstore.dao.po.SearchPO;

@Component("GlassesDAO")
public class GlassesDAO extends BaseDAO implements IGlassesDAO {

	public Glasses selectGlasses(int id) {
		return (Glasses)getSqlMapClientTemplate().queryForObject("Glasses.selectDetail",id);
	}

	public List<Glasses> selectGlasses(SearchPO po) {
		return getSqlMapClientTemplate().queryForList("Glasses.selectGlasses",po, po.getStart(), po.getLimit());
	}

	public int selectTotal(SearchPO po) {
		return (java.lang.Integer)getSqlMapClientTemplate().queryForObject("Glasses.selectTotal",po);
	}

	public void updateGlasses(Glasses po) {
		this.getSqlMapClientTemplate().update("Glasses.updateGlasses", po);
	}

	public void insertGlasses(Glasses po) {
		this.getSqlMapClientTemplate().insert("Glasses.insertGlasses", po);
	}

	public void deleteGlasses(int id) {
		this.getSqlMapClientTemplate().delete("Glasses.deleteGlasses", id);
	}

	public void updateHotUp(int id){
		this.getSqlMapClientTemplate().update("Glasses.updateHotUp",
				id);
	}
	
	 public void updateHotDown(int[] glasses){
		 Map params = new HashMap();
		 params.put("gIds", glasses);
		 this.getSqlMapClientTemplate().update("Glasses.updateHotDown",
				 params);
	 }
}
