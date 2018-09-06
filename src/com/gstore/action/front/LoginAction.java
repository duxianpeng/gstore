package com.gstore.action.front;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.SearchVO;
import com.gstore.action.vo.UserVO;
import com.gstore.common.Constants;
import com.gstore.common.action.BaseAction;
import com.gstore.service.front.ILoginService;
import com.gstore.service.front.ISearchGlassesService;

@Component(value = "LoginAction")
@Scope("prototype")
public class LoginAction extends BaseAction {

	private static final String NOT_EXISTS = "该用户不存在";// 用户不存在

	private static final String WRONG_PASS = "密码错误";// 密码错误

	private String email;

	private String pwd;

	private String indexUrl;

	private String errorInfo = null;

	private Logger logger = Logger.getLogger(LoginAction.class);
	@Resource(name = "LoginService")
	private ILoginService svc;

	@Resource(name = "SearchGlassesService")
	ISearchGlassesService svc2;

	public String getIndexUrl() {
		return indexUrl;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getErrorInfo() {
		return errorInfo;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	/**
	 * 用户登录
	 */
	public String login() throws Exception {
		UserVO user = svc.checkUser(email, pwd);
		if (user == null) {
			errorInfo = NOT_EXISTS;
			return ERROR;
		}
		String password = user.getPwd();
		if (password.equals(pwd)) {
			indexUrl = (String) getSession().remove(Constants.ORIGINAL_URL);
			getSession().clear();// 清空原始Session信息
			getSession().put(Constants.LOGIN_USER, user);
			if (!user.isUser()) {
				getSession().put(Constants.IS_ADMIN, true);
			}else{
				getSession().put(Constants.IS_ADMIN, false);
			}
			int userId = this.getLoginUserId();
			SearchVO param = new SearchVO();
			param.setUserId(userId);
			int total = svc2.searchTotal(param);
			getSession().put("favorateCount", total);

			if (indexUrl == null) {
				logger.debug("go front home............");
				return "fronthome";
			}
			logger.debug("go " + indexUrl);
			return SUCCESS;
		} else {
			errorInfo = WRONG_PASS;
			return ERROR;
		}
	}

	/**
	 * 用户登出
	 */
	public String logout() throws Exception {
		getSession().remove(Constants.LOGIN_USER);
		getSession().remove(Constants.ORIGINAL_URL);
		getSession().clear();
		return SUCCESS;
	}

}