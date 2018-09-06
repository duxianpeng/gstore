package com.gstore.service.admin;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.common.service.BaseService;
import com.gstore.dao.IFavorateDAO;
import com.gstore.dao.IGlassesDAO;
@Component(value = "DeleteGlassesService")
public class DeleteGlassesService extends BaseService implements
		IDeleteGlassesService {
	@Resource(name = "GlassesDAO")
	private IGlassesDAO dao;
	@Resource(name = "FavorateDAO")
	private IFavorateDAO favorateDao;

	private Logger logger = Logger.getLogger(DeleteGlassesService.class);
	public void deleteGlasses(int id) {
		favorateDao.deleteGlassesIds(id);
		dao.deleteGlasses(id);
	}

}
