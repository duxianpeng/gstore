package com.gstore.action.admin;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.GlassesVO;
import com.gstore.common.action.BaseAction;
import com.gstore.service.admin.IDetailService;

@Component(value = "DetailAdminAction")
@Scope("prototype")
public class DetailAction extends BaseAction implements IDetailAction {

	private static final long serialVersionUID = -168663134020484886L;
	private GlassesVO glasses;
	private int id;
	@Resource(name = "DetailAdminService")
	IDetailService svc;

	@Override
	public String execute() throws Exception {
		glasses = svc.searchGlasses(id);
		return SUCCESS;
	}

	public GlassesVO getGlasses() {
		return glasses;
	}

	public void setGlasses(GlassesVO glasses) {
		this.glasses = glasses;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
