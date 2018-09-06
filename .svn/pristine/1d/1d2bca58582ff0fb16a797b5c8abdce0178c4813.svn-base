/*
 * Copyright(C) 2011. BHR-FRONTLINE Technologies (Dalian) Co. Ltd. All Rights Reserved.
 * Application : gstore
 * Class Name  : com.gstore.action.BaseAction
 * Date Created: Mar 10, 2011
 * Author      : duxianpeng
 */
package com.gstore.common.action;

import java.math.BigDecimal;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.gstore.action.vo.UserVO;
import com.gstore.common.Constants;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements SessionAware {
	private Map session;

	public String execute() throws Exception {
		return SUCCESS;
	}

	public int getLoginUserId() {
		UserVO user = getLoginUser();
		if (user != null) {
			return user.getId();
		}
		return -1;
	}

	public boolean isAdmin() {
		UserVO user = getLoginUser();
		if (user != null) {
			return !user.isUser();
		}
		return false;
	}

	public String getLoginUserName() {
		UserVO user = getLoginUser();
		if (user != null) {
			return user.getName();
		}
		return null;
	}

	public UserVO getLoginUser() {
		return (UserVO) getSession().get(Constants.LOGIN_USER);
	}

	public void setSession(Map sessionMap) {
		this.session = sessionMap;
	}

	public Map getSession() {
		return session;
	}

}
