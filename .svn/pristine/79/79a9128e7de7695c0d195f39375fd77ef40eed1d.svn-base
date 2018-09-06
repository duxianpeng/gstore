package com.gstore.action.admin;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.PageVO;
import com.gstore.action.vo.SearchVO;
import com.gstore.action.vo.UserVO;
import com.gstore.common.Constants;
import com.gstore.common.action.BaseAction;
import com.gstore.common.util.CacheAccessor;
import com.gstore.common.util.CommonUtil;
import com.gstore.service.admin.IUserListService;

@Component(value = "UserListAction")
@Scope("prototype")
public class UserListAction extends BaseAction implements IUserListAction {
	
	private static final long serialVersionUID = 5183460693355631041L;
	private Logger logger = Logger.getLogger(UserListAction.class);
	@Resource(name = "UserListService")	
	private IUserListService uls;
	@Resource(name = "cacheAccessor")
	private CacheAccessor accessor;
	private SearchVO param= new SearchVO();
	private int pageIndex;
	private PageVO pageVO;
	private List<UserVO> items;
	public String execute() throws Exception {
		String key = "Search criteria";	
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
		List<UserVO> items = uls.getAllUsers(param);
		int total = uls.searchTotal();
		PageVO pageVO = new PageVO();
		pageVO.setTotalCount(total);
		pageVO.setPageIndex(pageIndex);
		this.setPageVO(pageVO);
		this.setItems(items);
		return SUCCESS;
	}

	public List<UserVO> getItems() {
		return items;
	}

	public void setItems(List<UserVO> items) {
		this.items = items;
	}

	public SearchVO getParam() {
		return param;
	}

	public void setParam(SearchVO param) {
		this.param = param;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public PageVO getPageVO() {
		return pageVO;
	}

	public void setPageVO(PageVO pageVO) {
		this.pageVO = pageVO;
	}


}
