package com.gstore.action.admin;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.UserVO;
import com.gstore.common.action.BaseAction;
import com.gstore.service.admin.UserUpdateService;
@Component(value = "UserUpdateAction")
@Scope("prototype")
public class UserUpdateAction extends BaseAction implements IUserUpdateAction {
	private static final long serialVersionUID = -168663134020484886L;
	private int id;
	private String name;
	private String pwd;
	private String confirmPwd;
	private int isAdmin;
	private String email;
	private int gender;
	private String birth;
	private String phone;
	private String regdate;

	@Resource(name = "UserUpdateService")
	UserUpdateService uus;

	@Override
	public String execute() throws Exception {
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setName(name);
		vo.setPwd(pwd);
		vo.setIsAdmin(isAdmin);
		vo.setEmail(email);
		vo.setGender(gender);
		vo.setBirth(birth);
		vo.setPhone(phone);
		vo.setRegdate(regdate);
		uus.updateUser(vo);

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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



}
