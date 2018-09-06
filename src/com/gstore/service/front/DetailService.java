package com.gstore.service.front;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.GlassesVO;
import com.gstore.common.service.BaseService;
import com.gstore.dao.IGlassesDAO;
import com.gstore.dao.po.Glasses;

@Component("DetailService")
public class DetailService extends BaseService implements IDetailService {

	@Resource(name = "GlassesDAO")
	private IGlassesDAO dao;

	private Logger logger = Logger.getLogger(DetailService.class);

	public GlassesVO searchGlasses(int id) {
		GlassesVO vo = new GlassesVO();
		Glasses glasses = dao.selectGlasses(id);
		this.getMapper().map(glasses, vo);
		return vo;
	}

}
