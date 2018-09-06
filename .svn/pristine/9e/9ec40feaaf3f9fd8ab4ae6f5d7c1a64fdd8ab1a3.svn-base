package com.gstore.action.front;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.FavorateVO;
import com.gstore.action.vo.SearchVO;
import com.gstore.common.action.BaseAction;
import com.gstore.service.front.IAddCartService;

@Component(value = "AddCartAction")
@Scope("prototype")
public class AddCartAction extends BaseAction implements
		IAddCartAction {

	private static final long serialVersionUID = -168663134020484886L;
	private int glassesId;
	private int starValue;
	private String comment;
	SearchVO param = new SearchVO();
	@Resource(name = "AddCartService")
	IAddCartService svc;

	Logger logger = Logger.getLogger(AddCartAction.class);
	@Override
	public String execute() throws Exception {
		int userId = this.getLoginUserId();
		FavorateVO favorate = new FavorateVO();
		favorate.setGlassesId(glassesId);
		favorate.setUserId(userId);
		favorate.setComments(comment);
		favorate.setStarValue(starValue);
		param.setUserId(userId);
		param.setGlassesId(glassesId);
		FavorateVO isInCart=svc.check(param);
		if(isInCart!=null&&isInCart.getUserId()==userId&&isInCart.getGlassesId()==glassesId){
			svc.updateFavotate(favorate);
		}
		else {
			svc.addFavorate(favorate);	
			svc.updateHotUp(glassesId);
		}
		return SUCCESS;
	}

	public int getGlassesId() {
		return glassesId;
	}

	public void setGlassesId(int glassesId) {
		this.glassesId = glassesId;
	}

	public int getStarValue() {
		return starValue;
	}

	public void setStarValue(int starValue) {
		this.starValue = starValue;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public SearchVO getParam() {
		return param;
	}

	public void setParam(SearchVO param) {
		this.param = param;
	}


}
