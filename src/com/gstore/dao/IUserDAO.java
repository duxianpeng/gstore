package com.gstore.dao;

import java.util.List;

import com.gstore.dao.po.SearchPO;
import com.gstore.dao.po.User;

public interface IUserDAO {

	List<User> selectUsers(SearchPO po);

	User selectUser(int id);

	User checkUser(String email, String pwd);
	
	void insertUser(User user);

	void updateUser(User user);

	void deleteUsers(List ids);

	void deleteUser(int id);
	
	public int selectTotal();
}
