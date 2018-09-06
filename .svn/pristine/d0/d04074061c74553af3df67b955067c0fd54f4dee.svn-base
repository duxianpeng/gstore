package com.gstore.action.front;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.GlassesVO;
import com.gstore.common.action.BaseAction;
import com.gstore.service.front.IDetailService;

@Component(value = "AddCommentAction")
@Scope("prototype")
public class AddCommentAction extends BaseAction implements IAddCommentAction {

	private static final long serialVersionUID = -168663134020484886L;
	private int glassesId;
	private String userName;
	private String glassesName;
	private String picture;

	@Resource(name = "DetailService")
	IDetailService svc;

	@Override
	public String execute() throws Exception {
		userName = this.getLoginUserName();
		GlassesVO glasses = svc.searchGlasses(glassesId);
		glassesName = glasses.getName();
		picture = glasses.getPicture();
		
		return SUCCESS;
	}

	public int getGlassesId() {
		return glassesId;
	}

	public void setGlassesId(int glassesId) {
		this.glassesId = glassesId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getGlassesName() {
		return glassesName;
	}

	public void setGlassesName(String glassesName) {
		this.glassesName = glassesName;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}


}
