package com.gstore.action.admin;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.action.BaseAction;
import com.gstore.service.admin.IUserEditViewService;

@Component(value = "UserEditViewAction")
@Scope("prototype")
public class UserEditViewAction extends BaseAction implements IUserEditViewAction {
	private static final long serialVersionUID = 5183460693355631041L;
	private Logger logger = Logger.getLogger(UserEditViewAction.class);
	@Resource(name = "UserEditViewService")	
	private IUserEditViewService ues;
	private int id;
	private UserVO user;
	public String execute() throws Exception {
		user = ues.getuserInfo(id);
		
		return SUCCESS;
	}
	public IUserEditViewService getUes() {
		return ues;
	}
	public void setUes(IUserEditViewService ues) {
		this.ues = ues;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public UserVO getUser() {
		return user;
	}
	public void setUser(UserVO user) {
		this.user = user;
	}
}
