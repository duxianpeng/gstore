package com.gstore.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.gstore.common.dao.BaseDAO;
import com.gstore.dao.po.Favorate;
import com.gstore.dao.po.SearchPO;

@Component("FavorateDAO")
public class FavorateDAO extends BaseDAO implements IFavorateDAO {

	public List<Favorate> selectFavorates(SearchPO po) {
		return getSqlMapClientTemplate().queryForList(
				"Favorate.selectFavorates", po, po.getStart(), po.getLimit());
	}

	public void deleteFavorates(int[] glasses, int userId) {
		Map params = new HashMap();
		params.put("gIds", glasses);
		params.put("userId", userId);
		this.getSqlMapClientTemplate().delete("Favorate.deleteFavorates",
				params);
	}

	public void insertFavorate(Favorate favorate) {
		this.getSqlMapClientTemplate().insert("Favorate.insertFavorate",
				favorate);
	}
	
	public void updateFavorate(Favorate favorate){
		this.getSqlMapClientTemplate().update("Favorate.updateFavorate",
				favorate);
	}

	public int selectTotal(SearchPO po) {
		return (java.lang.Integer) getSqlMapClientTemplate().queryForObject(
				"Favorate.selectTotal", po);
	}
	public Favorate check(SearchPO po){
		return (Favorate)getSqlMapClientTemplate().queryForObject(
				"Favorate.selectCart",po);
	}
	public void deleteGlassesIds(int id){
		this.getSqlMapClientTemplate().delete("Favorate.deleteGlassesIds",
				id);
	}
}