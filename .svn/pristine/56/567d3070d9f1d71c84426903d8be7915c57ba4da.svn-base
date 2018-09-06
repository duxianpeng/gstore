package com.gstore.service.admin;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.service.BaseService;
import com.gstore.dao.IUserDAO;
import com.gstore.dao.po.User;
@Component("UserAddService")
public class UserAddService extends BaseService implements IUserAddService {
	@Resource(name = "UserDAO")
	private IUserDAO dao;

	private Logger logger = Logger.getLogger(UserAddService.class);

	public void insertUser(UserVO vo) {
		User user = this.getMapper().map(vo, User.class);
		dao.insertUser(user);
	}
}
