package com.gstore.action.admin;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.common.action.BaseAction;
import com.gstore.service.admin.IDeleteGlassesService;
@Component(value = "DeleteGlassesAction")
@Scope("prototype")
public class DeleteGlassesAction extends BaseAction implements
		IDeleteGlassesAction {

	private int id;
	
	@Resource(name = "DeleteGlassesService")
	private IDeleteGlassesService svc;
	@Override
	public String execute() throws Exception {
		svc.deleteGlasses(id);
		return SUCCESS;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}


}
