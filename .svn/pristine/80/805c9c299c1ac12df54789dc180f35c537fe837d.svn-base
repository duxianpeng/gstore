package com.gstore.action.front;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.action.AnonymousAction;
import com.gstore.dao.po.User;
import com.gstore.service.front.IUpdateAccountService;

@Component(value = "UpdateAccountAction")
@Scope("prototype")
public class UpdateAccountAction extends AnonymousAction implements
		IUpdateAccountAction {

	private static final long serialVersionUID = -168663134020484886L;

	@Resource(name = "UpdateAccountService")
	IUpdateAccountService svc;
	private UserVO user;

	@Override
	public String execute() throws Exception {
		svc.updateUser(user);

		return SUCCESS;
	}

	public UserVO getUser() {
		return user;
	}

	public void setUser(UserVO user) {
		this.user = user;
	}



}
