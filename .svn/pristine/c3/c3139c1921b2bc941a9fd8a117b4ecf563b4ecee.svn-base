package com.gstore.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.gstore.common.dao.BaseDAO;
import com.gstore.dao.po.SearchPO;
import com.gstore.dao.po.User;
@Component("UserDAO")
public class UserDAO extends BaseDAO implements IUserDAO {
	public int selectTotal() {
		return (java.lang.Integer)getSqlMapClientTemplate().queryForObject("User.selectTotal",null);
	}
	public List<User> selectUsers(SearchPO po) {
		return this.getSqlMapClientTemplate().queryForList("User.selectUsers",null, po.getStart(), po.getLimit());
	}

	public User selectUser(int id) {
		return (User) this.getSqlMapClientTemplate().queryForObject(
				"User.selectUser", id);
	}
	
	public void insertUser(User user) {
		this.getSqlMapClientTemplate().insert("User.insertUser", user);
	}

	public void updateUser(User user) {
		this.getSqlMapClientTemplate().update("User.updateUser", user);
	}

	public void deleteUsers(List ids) {
		Map params = new HashMap();
		params.put("ids", ids);
		this.getSqlMapClientTemplate().delete("User.deleteUsers", params);
	}

	public void deleteUser(int id) {
		this.getSqlMapClientTemplate().delete("User.deleteUser", id);
	}

	public User checkUser(String email, String pwd) {
		Map params = new HashMap();
		params.put("email", email);
		params.put("pwd", pwd);
		return (User)this.getSqlMapClientTemplate().queryForObject("User.checkUser", params);
	}

}
