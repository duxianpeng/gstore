package com.gstore.common.interceptor;

import javax.annotation.Resource;

import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.gstore.action.vo.UserVO;
import com.gstore.common.Anonymous;
import com.gstore.common.Constants;
import com.gstore.common.util.CommonUtil;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/**
 * 登录拦截器，用于阻止未登录用户访问系统
 */
public class LoginInterceptor implements Interceptor {
	private Logger log = Logger.getLogger(LoginInterceptor.class);
	@Resource(name = "configure")
	private PropertiesConfiguration configure;

	public void destroy() {
	}

	public void init() {
	}

	public String intercept(ActionInvocation invocation) throws Exception {
		Action action = (Action) invocation.getAction();
		String actionName = invocation.getInvocationContext().getName();

		if (action instanceof Anonymous || "login".equals(actionName)
				|| "logout".equals(actionName)) {
			return invocation.invoke();
		} else {
			if (ActionContext.getContext().getSession()
					.get(Constants.LOGIN_USER) != null) {
				UserVO user = (UserVO) ActionContext.getContext().getSession()
						.get(Constants.LOGIN_USER);
				String nameSpace = invocation.getProxy().getNamespace();
			if(user.isUser()){
				if("/admin".equals(nameSpace)){
					return Action.ERROR;
				}
			}
				return invocation.invoke();
			}
			String devMode = configure.getString("devMode", "false");
			String name = configure.getString("name", "Admin");
			String pwd = configure.getString("password", "Admin");
			String email = configure.getString("email", "jiangxin@bhr.com.cn");
			int isAdmin = configure.getInt("isAdmin");
			int gender = configure.getInt("gender");
			String phone = configure.getString("phone");
			String birth = configure.getString("birth");
			String regdate = configure.getString("regdate");
			log.debug("Currently, Dev mode is " + devMode);
			if ("true".equalsIgnoreCase(devMode)) {
				UserVO user = new UserVO();
				user.setName(name);
				user.setEmail(email);
				user.setPwd(pwd);
				user.setIsAdmin(isAdmin);
				user.setGender(gender);
				user.setPhone(phone);
				user.setBirth(birth);
				user.setRegdate(regdate);
				ActionContext.getContext().getSession()
						.put(Constants.LOGIN_USER, user);
				ActionContext.getContext().getSession()
						.put(Constants.IS_ADMIN, true);
				return invocation.invoke();
			}
		}

		ActionContext
				.getContext()
				.getSession()
				.put(Constants.ORIGINAL_URL,
						CommonUtil.getRequestURL(ServletActionContext
								.getRequest()));
		return Action.LOGIN;
	}
}
