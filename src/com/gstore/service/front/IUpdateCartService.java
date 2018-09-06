package com.gstore.service.front;

import java.util.List;

import com.gstore.action.vo.GlassesVO;
import com.gstore.action.vo.SearchVO;
import com.gstore.action.vo.UserVO;

public interface IUpdateCartService {

	void removeFavorates(int[] glasses, int userId);

	void updateHotDown(int[] glasses);


}
