package com.gstore.service.admin;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.GlassesVO;
import com.gstore.action.vo.SearchVO;
import com.gstore.common.service.BaseService;
import com.gstore.common.util.CommonUtil;
import com.gstore.dao.IGlassesDAO;
import com.gstore.dao.po.Glasses;
import com.gstore.dao.po.SearchPO;

@Component("SearchGlassesAdminService")
public class SearchGlassesService extends BaseService implements
		ISearchGlassesService {

	@Resource(name = "GlassesDAO")
	private IGlassesDAO dao;

	private Logger logger = Logger.getLogger(SearchGlassesService.class);

	public List<GlassesVO> searchGlasses(SearchVO vo) {
		SearchPO po = this.getMapper().map(vo, SearchPO.class);
		List<Glasses> glasses = dao.selectGlasses(po);
		List<GlassesVO> glassesVOs = new ArrayList<GlassesVO>();
		if (!CommonUtil.isNullOrEmpty(glasses)) {
			for (Glasses item : glasses) {
				GlassesVO temp = new GlassesVO();
				this.getMapper().map(item, temp);
				glassesVOs.add(temp);
			}
		}
		return glassesVOs;
	}

	public int searchTotal(SearchVO param) {
		SearchPO po = this.getMapper().map(param, SearchPO.class);
		int total = dao.selectTotal(po);
		return total;
	}

}
