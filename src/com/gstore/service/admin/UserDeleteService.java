package com.gstore.service.admin;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.service.BaseService;
import com.gstore.dao.IUserDAO;
import com.gstore.dao.po.User;
@Component("UserDeleteService")
public class UserDeleteService extends BaseService implements IUserDeleteService {
	@Resource(name = "UserDAO")
	private IUserDAO dao;

	private Logger logger = Logger.getLogger(UserDeleteService.class);

	public void deleteUser(int id) {
		dao.deleteUser(id);
	}
}
