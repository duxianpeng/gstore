package com.gstore.service.front;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.gstore.common.service.BaseService;
import com.gstore.dao.IFavorateDAO;
import com.gstore.dao.IGlassesDAO;
@Component("UpdateCartService")
public class UpdateCartService extends BaseService implements
		IUpdateCartService {
	@Resource(name = "FavorateDAO")
	private IFavorateDAO dao;
	
	@Resource(name = "GlassesDAO")
	private IGlassesDAO glassesDao;
	
	public void removeFavorates(int[] glasses, int userId) {
		dao.deleteFavorates(glasses, userId);
	}
	public void updateHotDown(int[] glasses) {
		glassesDao.updateHotDown(glasses);
	}
}
