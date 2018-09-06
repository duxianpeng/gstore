package com.gstore.service.front;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

@Component("HomeService")
public class HomeService extends BaseService implements IHomeService {

	@Resource(name = "GlassesDAO")
	private IGlassesDAO dao;

	private Logger logger = Logger.getLogger(HomeService.class);

	public List<Map> searchGlasses(SearchVO params) {
		SearchPO po = this.getMapper().map(params, SearchPO.class);
		List<Glasses> glasses = dao.selectGlasses(po);
		List<GlassesVO> glassesVOs = new ArrayList<GlassesVO>();
		if (!CommonUtil.isNullOrEmpty(glasses)) {
			for (Glasses item : glasses) {
				GlassesVO temp = new GlassesVO();
				this.getMapper().map(item, temp);
				glassesVOs.add(temp);
			}
		}
		List<Map> result = this.toMap(glassesVOs);

		return result;
	}

	private List<Map> toMap(List<GlassesVO> objs) {
		List<Map> maps = new ArrayList<Map>();
		if (!CommonUtil.isNullOrEmpty(objs)) {
			for (int i = 0; i < objs.size(); i++) {
				GlassesVO item1 = objs.get(i);
				if (!CommonUtil.isNullOrEmpty(item1)) {
					Map map = new HashMap();
					map.put("item1", item1);
					i++;
					GlassesVO item2 = objs.get(i);
					if (!CommonUtil.isNullOrEmpty(item2)) {
						map.put("item2", item2);
					} else {
						map.put("item2", null);
					}
					maps.add(map);
				}
			}
		}
		return maps;
	}
}
