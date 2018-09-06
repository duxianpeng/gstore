package com.gstore.action.admin;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.action.BaseAction;
import com.gstore.dao.po.User;
import com.gstore.service.admin.IUserInfoService;

@Component(value = "UserInfoAction")
@Scope("prototype")
public class UserInfoAction extends BaseAction implements IUserInfoAction{
	private static final long serialVersionUID = 5183460693355631041L;
	private Logger logger = Logger.getLogger(UserInfoAction.class);
	@Resource(name = "UserInfoService")	
	private IUserInfoService uis;
	private int id;
	private UserVO user;
	public String execute() throws Exception {
		user = uis.getuserInfo(id);
		
		return SUCCESS;
	}
	public IUserInfoService getUis() {
		return uis;
	}
	public void setUis(IUserInfoService uis) {
		this.uis = uis;
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
