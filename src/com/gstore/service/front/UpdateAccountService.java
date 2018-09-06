package com.gstore.service.front;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.service.BaseService;
import com.gstore.dao.IUserDAO;
import com.gstore.dao.po.User;

@Component("UpdateAccountService")
public class UpdateAccountService extends BaseService implements
		IUpdateAccountService {

	@Resource(name = "UserDAO")
	private IUserDAO dao;

	private Logger logger = Logger.getLogger(UpdateAccountService.class);

	public void updateUser(UserVO vo) {
		User user = this.getMapper().map(vo, User.class);
		dao.updateUser(user);
	}

}
