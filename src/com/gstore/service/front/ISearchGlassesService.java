package com.gstore.service.front;

import java.util.List;

import com.gstore.action.vo.GlassesVO;
import com.gstore.action.vo.SearchVO;
import com.gstore.action.vo.UserVO;

public interface ISearchGlassesService {

	List<GlassesVO> searchGlasses(SearchVO vo);

	int searchTotal(SearchVO param);

}
