package com.gstore.service.front;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.gstore.action.vo.CategoryVO;
import com.gstore.common.service.BaseService;
import com.gstore.dao.ICategoryDAO;
import com.gstore.dao.po.Category;
@Component("CategoryService")
public class CategoryService extends BaseService implements ICategoryService {

	@Resource(name = "CategoryDAO")
	private ICategoryDAO dao;

	public List<CategoryVO> searchCategory() {
		List<Category> categories = dao.selectCategories();
		List<CategoryVO> result = new ArrayList<CategoryVO>();
		this.getMapper().map(categories, result);
		return result;
	}

}
