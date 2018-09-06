package com.gstore.service.front;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.service.BaseService;
import com.gstore.common.util.CommonUtil;
import com.gstore.dao.IUserDAO;
import com.gstore.dao.po.User;

@Component("LoginService")
public class LoginService extends BaseService implements ILoginService {

	@Resource(name = "UserDAO")
	private IUserDAO dao;

	private Logger logger = Logger.getLogger(LoginService.class);

	public UserVO checkUser(String email, String password) {
		User user = dao.checkUser(email, password);
		
		if(!CommonUtil.isNullOrEmpty(user)){
			UserVO userVO = this.getMapper().map(user, UserVO.class);
			return userVO;
		}
		
		return null;
	}

}
