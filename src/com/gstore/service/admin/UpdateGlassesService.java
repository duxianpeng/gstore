package com.gstore.service.admin;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.GlassesVO;
import com.gstore.common.service.BaseService;
import com.gstore.dao.IGlassesDAO;
import com.gstore.dao.po.Glasses;
@Component(value = "UpdateGlassesService")
public class UpdateGlassesService extends BaseService implements
		IUpdateGlassesService {
	@Resource(name = "GlassesDAO")
	private IGlassesDAO dao;

	private Logger logger = Logger.getLogger(UpdateGlassesService.class);

	public void updateGlasses(GlassesVO glasses) {
		Glasses po = this.getMapper().map(glasses, Glasses.class);
		dao.updateGlasses(po);
	}

}
