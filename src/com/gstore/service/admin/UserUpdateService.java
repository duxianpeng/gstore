package com.gstore.service.admin;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.service.BaseService;
import com.gstore.dao.IUserDAO;
import com.gstore.dao.po.User;
@Component("UserUpdateService")
public class UserUpdateService extends BaseService implements IUserUpdateService {
	@Resource(name = "UserDAO")
	private IUserDAO dao;

	private Logger logger = Logger.getLogger(UserUpdateService.class);

	public void updateUser(UserVO vo) {
		User user = this.getMapper().map(vo, User.class);
		dao.updateUser(user);
	}
}
