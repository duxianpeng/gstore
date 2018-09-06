package com.gstore.action.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.FavorateVO;
import com.gstore.action.vo.GlassesVO;
import com.gstore.action.vo.PageVO;
import com.gstore.action.vo.SearchVO;
import com.gstore.common.Constants;
import com.gstore.common.action.BaseAction;
import com.gstore.service.front.IFavoratesService;
import com.gstore.service.front.ISearchGlassesService;

@Component(value = "CartAction")
@Scope("prototype")
public class CartAction extends BaseAction implements ICartAction {

	private static final long serialVersionUID = -168663134020484886L;
	private List<FavorateVO> favorates;
	private PageVO pageVO;
	private int pageIndex;
	@Resource(name = "FavoratesService")
	IFavoratesService svc;

	@Override
	public String execute() throws Exception {
		int userId = this.getLoginUserId();
		SearchVO param = new SearchVO();
		if (pageIndex <= 0) {
			pageIndex = 1;
		}
		int start = (pageIndex - 1) * Constants.DEFAULT_PAGE_SIZE;
		param.setStart(start);
		param.setUserId(userId);
		favorates = svc.searchFavorates(param);
		int total = svc.searchTotal(param);
		PageVO pageVO = new PageVO();
		pageVO.setTotalCount(total);
		pageVO.setPageIndex(pageIndex);
		this.setPageVO(pageVO);
		return SUCCESS;
	}


	public List<FavorateVO> getFavorates() {
		return favorates;
	}


	public void setFavorates(List<FavorateVO> favorates) {
		this.favorates = favorates;
	}


	public PageVO getPageVO() {
		return pageVO;
	}

	public void setPageVO(PageVO pageVO) {
		this.pageVO = pageVO;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

}
