package com.chinasoft.SSHDemo1.service.impl;
import com.chinasoft.SSHDemo1.dao.UserDao;
import com.chinasoft.SSHDemo1.model.User;
import com.chinasoft.SSHDemo1.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
 
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	 @Autowired
	    private UserDao userDao;

	@Override
	public User getByName(String name) {
		// TODO Auto-generated method stub
		 try
	        {
	            User user = userDao.getByName(name);
	            return user;
	        }
	        catch (Exception e)
	        {
	            e.printStackTrace();
	            return null;
	        }
	}

	@Override
	public List<Object[]> getByUser(String name)  {
		// TODO Auto-generated method stub
		return userDao.getByUser(name);
	}
	 
	 
	 
}
