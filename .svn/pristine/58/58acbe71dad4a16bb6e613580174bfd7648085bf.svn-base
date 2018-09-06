package com.gstore.action;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.dispatcher.FilterDispatcher;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.CategoryVO;
import com.gstore.common.util.CommonUtil;
import com.gstore.service.front.ICategoryService;

@Component("GstoreAction")
public class GstoreAction extends FilterDispatcher {

	@Resource(name = "CategoryService")
	ICategoryService svc;

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) req;
		initMenu(httpRequest);
		super.doFilter(req, res, arg2);
	}

	private void initMenu(HttpServletRequest httpRequest) {
		HttpSession session = httpRequest.getSession();
		String key = "menu";
		List<CategoryVO> menu = (List<CategoryVO>) session.getAttribute(key);
		if (CommonUtil.isNullOrEmpty(menu)) {
			List<CategoryVO> categories = svc.searchCategory();
			session.setAttribute(key, categories);
		}
	}

}
