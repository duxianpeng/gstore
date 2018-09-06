package com.gstore.service.admin;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.service.BaseService;
import com.gstore.dao.IUserDAO;
import com.gstore.dao.po.User;
@Component(value = "UserEditViewService")
public class UserEditViewService extends BaseService implements IUserEditViewService {
	@Resource(name = "UserDAO")
	private IUserDAO dao;
	private Logger logger = Logger.getLogger(UserEditViewService.class);
	public UserVO getuserInfo(int id) {
		UserVO vo = new UserVO();
		User user = dao.selectUser(id);
		this.getMapper().map(user, vo);
		return vo;
}
}
