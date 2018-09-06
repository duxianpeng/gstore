package com.gstore.action.admin;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.GlassesVO;
import com.gstore.common.action.BaseAction;
import com.gstore.service.admin.ICreateGlassesService;
@Component(value = "CreateGlassesAction")
@Scope("prototype")
public class CreateGlassesAction extends BaseAction implements
		ICreateGlassesAction {

	private GlassesVO glasses;
	@Resource(name = "CreateGlassesService")
	private ICreateGlassesService svc;
	
	@Override
	public String execute() throws Exception {
		svc.createGlasses(glasses);
		return SUCCESS;
	}

	public GlassesVO getGlasses() {
		return glasses;
	}

	public void setGlasses(GlassesVO glasses) {
		this.glasses = glasses;
	}

}
