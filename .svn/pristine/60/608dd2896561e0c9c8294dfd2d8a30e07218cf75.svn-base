package com.gstore.action.admin;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.GlassesVO;
import com.gstore.common.action.BaseAction;
import com.gstore.service.admin.IUpdateGlassesService;
@Component(value = "UpdateGlassesAction")
@Scope("prototype")
public class UpdateGlassesAction extends BaseAction implements
		IUpdateGlassesAction {

	private GlassesVO glasses;
	
	@Resource(name = "UpdateGlassesService")	
	private IUpdateGlassesService svc;
	@Override
	public String execute() throws Exception {
		svc.updateGlasses(glasses);
		return SUCCESS;
	}
	public GlassesVO getGlasses() {
		return glasses;
	}
	public void setGlasses(GlassesVO glasses) {
		this.glasses = glasses;
	}



}
