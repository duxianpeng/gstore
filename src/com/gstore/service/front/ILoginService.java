package com.gstore.service.front;

import com.gstore.action.vo.UserVO;

public interface ILoginService {

	UserVO checkUser(String email, String password);

}
