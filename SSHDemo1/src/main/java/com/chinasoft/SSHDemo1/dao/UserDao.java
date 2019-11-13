package com.chinasoft.SSHDemo1.dao;

import java.util.List;

 



import java.util.Map;

import com.chinasoft.SSHDemo1.model.Goods;
import com.chinasoft.SSHDemo1.model.User;

public interface UserDao {
	User getByName(String name);
	List<Object[]> getByUser(String name) ;
}
