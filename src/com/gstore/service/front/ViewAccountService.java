package com.gstore.service.front;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.service.BaseService;
import com.gstore.dao.IUserDAO;
import com.gstore.dao.po.User;

@Component("ViewAccountService")
public class ViewAccountService extends BaseService implements
		IViewAccountService {
	@Resource(name = "UserDAO")
	private IUserDAO dao;

	private Logger logger = Logger.getLogger(CreateAccountService.class);

	public UserVO searchUser(int id) {
		User user = dao.selectUser(id);
		UserVO result = this.getMapper().map(user, UserVO.class);
		return result;
	}

}
