package com.gstore.dao;

import java.util.List;

import com.gstore.dao.po.Favorate;
import com.gstore.dao.po.Glasses;
import com.gstore.dao.po.SearchPO;

public interface IGlassesDAO {

	Glasses selectGlasses(int id);

	List<Glasses> selectGlasses(SearchPO po);

	int selectTotal(SearchPO po);

	void updateGlasses(Glasses po);

	void insertGlasses(Glasses po);

	void deleteGlasses(int id);
	
	 void updateHotUp(int id);
	 
	 void updateHotDown(int[] glasses);
}
