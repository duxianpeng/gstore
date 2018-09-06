package com.gstore.service.front;

import java.util.Date;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.FavorateVO;
import com.gstore.action.vo.SearchVO;
import com.gstore.common.service.BaseService;
import com.gstore.dao.IFavorateDAO;
import com.gstore.dao.IGlassesDAO;
import com.gstore.dao.po.Favorate;
import com.gstore.dao.po.SearchPO;

@Component("AddCartService")
public class AddCartService extends BaseService implements IAddCartService {

	@Resource(name = "FavorateDAO")
	private IFavorateDAO dao;
	
	@Resource(name ="GlassesDAO")
	private IGlassesDAO glassesDao;
	
	private Logger logger = Logger.getLogger(AddCartService.class);

	public void addFavorate(FavorateVO favorate) {
		Favorate po = this.getMapper().map(favorate, Favorate.class);
		po.setAddDate(new Date());
		dao.insertFavorate(po);
	}
	public FavorateVO check(SearchVO param){
		FavorateVO vo = new FavorateVO();
		SearchPO po = this.getMapper().map(param, SearchPO.class);
		Favorate favorate = dao.check(po);
		if(favorate!=null){
		this.getMapper().map(favorate, vo);
		}
		return vo;
	}
	public void updateFavotate(FavorateVO favorate){
		Favorate po = this.getMapper().map(favorate, Favorate.class);
		po.setAddDate(new Date());
		dao.updateFavorate(po);
	}
	
	public void updateHotUp(int id){
		glassesDao.updateHotUp(id);
	}
}
