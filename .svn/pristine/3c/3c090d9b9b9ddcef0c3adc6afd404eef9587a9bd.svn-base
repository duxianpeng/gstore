package com.gstore.action.front;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.GlassesVO;
import com.gstore.action.vo.PageVO;
import com.gstore.action.vo.SearchVO;
import com.gstore.common.Constants;
import com.gstore.common.action.AnonymousAction;
import com.gstore.common.util.CacheAccessor;
import com.gstore.common.util.CommonUtil;
import com.gstore.service.front.ISearchGlassesService;

@Component(value = "SearchGlassesAction")
@Scope("prototype")
public class SearchGlassesAction extends AnonymousAction implements
		ISearchGlassesAction {

	private static final long serialVersionUID = -168663134020484886L;
	private Logger logger = Logger.getLogger(SearchGlassesAction.class);
	@Resource(name = "cacheAccessor")
	private CacheAccessor accessor;
	private int categoryId;
	private int pageIndex;
	private SearchVO param= new SearchVO();
	private List<GlassesVO> glasses;
	private PageVO pageVO;
	private String order;
	private String isSearch;
	@Resource(name = "SearchGlassesService")
	ISearchGlassesService svc;

	public String searchGlasses() throws Exception {
		String key = "Search criteria";
		if (categoryId != 0) {
			param.setCategoryId(categoryId);
		}
		if (pageIndex <= 0) {
			accessor.putData(key, param);
			pageIndex = 1;
		} else {
			param = (SearchVO) accessor.getData(key);
			int start = (pageIndex - 1) * Constants.DEFAULT_PAGE_SIZE;
			param.setStart(start);
		}
		if (!CommonUtil.isNullOrEmpty(param)) {
			if (logger.isDebugEnabled()) {
				logger.debug("Search Glasses parameters:" + param);
			}
		}
		if(!CommonUtil.isNullOrEmpty(order)){
			param.setOrder(order);
		}else{
			this.order="addDate";
		}
		glasses = svc.searchGlasses(param);
		int total = svc.searchTotal(param);
		PageVO pageVO = new PageVO();
		pageVO.setTotalCount(total);
		pageVO.setPageIndex(pageIndex);
		this.setPageVO(pageVO);
		this.isSearch = "true";
		return SUCCESS;
	}

	public String searchNewGlasses() throws Exception {
		param = new SearchVO();
		if (pageIndex > 0) {
			int start = (pageIndex - 1) * Constants.DEFAULT_PAGE_SIZE;
			param.setStart(start);
		} else {
			pageIndex = 1;
		}

		glasses = svc.searchGlasses(param);
		int total = svc.searchTotal(param);
		PageVO pageVO = new PageVO();
		pageVO.setTotalCount(total);
		pageVO.setPageIndex(pageIndex);
		this.setPageVO(pageVO);
		return SUCCESS;
	}

	public String searchHotGlasses() throws Exception {
		param = new SearchVO();
		param.setOrder("hotNumber");
		if (pageIndex > 0) {
			int start = (pageIndex - 1) * Constants.DEFAULT_PAGE_SIZE;
			param.setStart(start);
		} else {
			pageIndex = 1;
		}
		glasses = svc.searchGlasses(param);
		int total = svc.searchTotal(param);
		PageVO pageVO = new PageVO();
		pageVO.setTotalCount(total);
		pageVO.setPageIndex(pageIndex);
		this.setPageVO(pageVO);
		return SUCCESS;
	}

	public SearchVO getParam() {
		return param;
	}

	public void setParam(SearchVO param) {
		this.param = param;
	}

	public List<GlassesVO> getGlasses() {
		return glasses;
	}

	public void setGlasses(List<GlassesVO> glasses) {
		this.glasses = glasses;
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

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public String getIsSearch() {
		return isSearch;
	}

	public void setIsSearch(String isSearch) {
		this.isSearch = isSearch;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

}
