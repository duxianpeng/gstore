package com.gstore.action.front;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.action.AnonymousAction;
import com.gstore.common.util.CommonUtil;
import com.gstore.service.front.ICreateAccountService;

@Component(value = "CreateAccountAction")
@Scope("prototype")
public class CreateAccountAction extends AnonymousAction implements
		ICreateAccountAction {

	private static final long serialVersionUID = -168663134020484886L;
	private String name;
	private String pwd;
	private String confirmPwd;
	private int isAdmin;
	private String email;
	private int gender;
	private String birth;
	private String phone;
	private String regdate;

	@Resource(name = "CreateAccountService")
	ICreateAccountService svc;

	@Override
	public String execute() throws Exception {
		UserVO vo = new UserVO();
		vo.setName(name);
		vo.setPwd(pwd);
		vo.setConfirmPwd(confirmPwd);
		vo.setIsAdmin(0);
		vo.setEmail(email);
		vo.setGender(gender);
		vo.setBirth(birth);
		vo.setPhone(phone);
		vo.setRegdate(regdate);
		svc.createUser(vo);

		return SUCCESS;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getConfirmPwd() {
		return confirmPwd;
	}

	public void setConfirmPwd(String confirmPwd) {
		this.confirmPwd = confirmPwd;
	}

	public int getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

}
