package com.gstore.service.front;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.FavorateVO;
import com.gstore.action.vo.SearchVO;
import com.gstore.common.service.BaseService;
import com.gstore.common.util.CommonUtil;
import com.gstore.dao.IFavorateDAO;
import com.gstore.dao.po.Favorate;
import com.gstore.dao.po.SearchPO;

@Component("FavoratesService")
public class FavoratesService extends BaseService implements IFavoratesService {
	@Resource(name = "FavorateDAO")
	private IFavorateDAO dao;

	private Logger logger = Logger.getLogger(FavoratesService.class);

	public List<FavorateVO> searchFavorates(SearchVO param) {
		SearchPO po = this.getMapper().map(param, SearchPO.class);
		List<Favorate> favorates = dao.selectFavorates(po);
		List<FavorateVO> result = new ArrayList<FavorateVO>();
		if(!CommonUtil.isNullOrEmpty(favorates)){
			for(Favorate  favorate : favorates){
				FavorateVO vo = new FavorateVO();
				this.getMapper().map(favorate, vo);
				result.add(vo);
			}
		}
		return result;
	}

	public int searchTotal(SearchVO param) {
		SearchPO po = this.getMapper().map(param, SearchPO.class);
		int total = dao.selectTotal(po);
		return total;
	}

}
