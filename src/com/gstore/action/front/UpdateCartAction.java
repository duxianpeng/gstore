package com.gstore.action.front;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.common.action.BaseAction;
import com.gstore.service.front.IUpdateCartService;

@Component(value = "UpdateCartAction")
@Scope("prototype")
public class UpdateCartAction extends BaseAction implements
		ICartAction {

	private static final long serialVersionUID = -168663134020484886L;
	private int[] glasses;

	@Resource(name = "UpdateCartService")
	IUpdateCartService svc;

	@Override
	public String execute() throws Exception {
		int userId = this.getLoginUserId();
		svc.removeFavorates(glasses, userId);
		svc.updateHotDown(glasses);
		return SUCCESS;
	}

	public int[] getGlasses() {
		return glasses;
	}

	public void setGlasses(int[] glasses) {
		this.glasses = glasses;
	}

	
}
