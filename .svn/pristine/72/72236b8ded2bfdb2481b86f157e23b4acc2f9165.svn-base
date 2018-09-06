package com.gstore.service.admin;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.SearchVO;
import com.gstore.action.vo.UserVO;
import com.gstore.common.service.BaseService;
import com.gstore.common.util.CommonUtil;
import com.gstore.dao.IUserDAO;
import com.gstore.dao.po.SearchPO;
import com.gstore.dao.po.User;

@Component(value = "UserListService")
public class UserListService extends BaseService implements IUserListService{

	@Resource(name = "UserDAO")
	private IUserDAO dao;

	private Logger logger = Logger.getLogger(UserListService.class);
	public List<UserVO> getAllUsers(SearchVO vo) {
		SearchPO po = this.getMapper().map(vo, SearchPO.class);
		List<User> users = dao.selectUsers(po);
		List<UserVO> userVOs = new ArrayList<UserVO>();
		if (!CommonUtil.isNullOrEmpty(users)) {
			for (User item : users) {
				UserVO temp = new UserVO();
				this.getMapper().map(item, temp);
				userVOs.add(temp);
			}
		}
		return userVOs;
}
	public int searchTotal() {
		int total = dao.selectTotal();
		return total;
	}

}