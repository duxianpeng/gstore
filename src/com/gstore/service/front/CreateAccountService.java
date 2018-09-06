package com.gstore.service.front;

import java.util.Date;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.service.BaseService;
import com.gstore.dao.IUserDAO;
import com.gstore.dao.po.User;

@Component("CreateAccountService")
public class CreateAccountService extends BaseService implements
		ICreateAccountService {

	@Resource(name = "UserDAO")
	private IUserDAO dao;

	private Logger logger = Logger.getLogger(CreateAccountService.class);

	public void createUser(UserVO vo) {
		User user = this.getMapper().map(vo, User.class);
		user.setRegdate(new Date());
		dao.insertUser(user);
	}

}
