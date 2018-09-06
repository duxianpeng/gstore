package com.gstore.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.gstore.common.dao.BaseDAO;
import com.gstore.dao.po.Category;
@Component("CategoryDAO")
public class CategoryDAO extends BaseDAO implements ICategoryDAO {

	public List<Category> selectCategories() {
		return getSqlMapClientTemplate().queryForList("Category.selectCategories");
	}

}
