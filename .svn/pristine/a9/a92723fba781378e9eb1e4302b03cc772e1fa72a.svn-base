package com.gstore.dao;

import java.util.List;

import com.gstore.dao.po.Favorate;
import com.gstore.dao.po.SearchPO;

public interface IFavorateDAO {

	List<Favorate> selectFavorates(SearchPO po);

	void deleteFavorates(int[] glasses, int userId);

	void insertFavorate(Favorate po);

	int selectTotal(SearchPO po);

	Favorate check(SearchPO po);
	
	void updateFavorate(Favorate favorate);
	
	void deleteGlassesIds(int id);
}
