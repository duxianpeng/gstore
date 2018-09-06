package com.gstore.action.front;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.action.BaseAction;
import com.gstore.service.front.IViewAccountService;

@Component(value = "ViewAccountAction")
@Scope("prototype")
public class ViewAccountAction extends BaseAction implements IViewAccountAction {

	private static final long serialVersionUID = -168663134020484886L;
	private int id;
	private UserVO user;
	@Resource(name = "ViewAccountService")
	IViewAccountService svc;
	private Logger logger = Logger.getLogger(ViewAccountAction.class);

	@Override
	public String execute() throws Exception {
		user = this.getLoginUser();
		if (user == null) {
			int id = this.getLoginUserId();
			this.user = svc.searchUser(id);
		}
		return SUCCESS;
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
