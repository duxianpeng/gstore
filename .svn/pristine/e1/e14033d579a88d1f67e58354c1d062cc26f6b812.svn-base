package com.gstore.action.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.FavorateVO;
import com.gstore.action.vo.PageVO;
import com.gstore.action.vo.SearchVO;
import com.gstore.common.Constants;
import com.gstore.common.action.AnonymousAction;
import com.gstore.service.front.IFavoratesService;

@Component(value = "FavoratesAction")
@Scope("prototype")
public class FavoratesAction extends AnonymousAction implements
		IFavoratesAction {

	private static final long serialVersionUID = -168663134020484886L;
	private Integer glassesId;
	private PageVO pageVO;
	private int pageIndex;
	private List<FavorateVO> favorates;
	@Resource(name = "FavoratesService")
	IFavoratesService svc;

	@Override
	public String execute() throws Exception {
		SearchVO param = new SearchVO();
		if (pageIndex > 0) {
			int start = (pageIndex - 1) * Constants.DEFAULT_PAGE_SIZE + 1;
			param.setStart(start);
		} else {
			pageIndex = 1;
		}
		param.setGlassesId(glassesId);
		favorates = svc.searchFavorates(param);
		int total = svc.searchTotal(param);
		PageVO pageVO = new PageVO();
		pageVO.setTotalCount(total);
		pageVO.setPageIndex(pageIndex);
		this.setPageVO(pageVO);
		return SUCCESS;
	}


	public Integer getGlassesId() {
		return glassesId;
	}


	public void setGlassesId(Integer glassesId) {
		this.glassesId = glassesId;
	}


	public List<FavorateVO> getFavorates() {
		return favorates;
	}

	public void setFavorates(List<FavorateVO> favorates) {
		this.favorates = favorates;
	}

	public IFavoratesService getSvc() {
		return svc;
	}

	public void setSvc(IFavoratesService svc) {
		this.svc = svc;
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
