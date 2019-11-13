package com.chinasoft.SSHDemo1.service;

import java.util.List;
import java.util.Map;

import com.chinasoft.SSHDemo1.model.User;

public interface UserService {
	  User getByName(String name);
	  List<Object[]> getByUser(String name) ;
}
