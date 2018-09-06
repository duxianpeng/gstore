package com.gstore.service.front;

import java.util.List;

import com.gstore.action.vo.FavorateVO;
import com.gstore.action.vo.SearchVO;


public interface IFavoratesService {

	List<FavorateVO> searchFavorates(SearchVO param);

	int searchTotal(SearchVO param);

}
