package com.gstore.action.front;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.GlassesVO;
import com.gstore.action.vo.UserVO;
import com.gstore.common.action.AnonymousAction;
import com.gstore.service.front.IDetailService;

@Component(value = "DetailAction")
@Scope("prototype")
public class DetailAction extends AnonymousAction implements IDetailAction {

	private static final long serialVersionUID = -168663134020484886L;
	private GlassesVO glasses;
	private int id;
	@Resource(name = "DetailService")
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
