package com.gstore.service.admin;

import java.util.List;

import com.gstore.action.vo.SearchVO;
import com.gstore.action.vo.UserVO;

public interface IUserListService {
	 int searchTotal();
	List<UserVO> getAllUsers(SearchVO vo);
}
