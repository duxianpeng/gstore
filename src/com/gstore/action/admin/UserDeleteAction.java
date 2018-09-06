package com.gstore.action.admin;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.action.BaseAction;
import com.gstore.service.admin.IUserDeleteService;

@Component(value = "UserDeleteAction")
@Scope("prototype")
public class UserDeleteAction extends BaseAction implements IUserDeleteAction {
	private static final long serialVersionUID = 5183460693355631041L;
	private Logger logger = Logger.getLogger(UserDeleteAction.class);
	@Resource(name = "UserDeleteService")	
	private IUserDeleteService uds;
	private int id;
	private UserVO user;
	public String execute() throws Exception {
		uds.deleteUser(id);
		
		return SUCCESS;
	}
	public IUserDeleteService getUds() {
		return uds;
	}
	public void setUds(IUserDeleteService uds) {
		this.uds = uds;
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
