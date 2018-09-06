package com.gstore.common.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.gstore.common.Anonymous;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 通用匿名Action，可跳过登录判断
 */
public class AnonymousAction extends ActionSupport implements Anonymous, SessionAware {
    private Map session;
	public String execute() throws Exception {
		return SUCCESS;
	}
    public void setSession(Map sessionMap) {
        this.session = sessionMap;
    }

    public Map getSession() {
        return session;
    }
}
