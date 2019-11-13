package com.chinasoft.SSM.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chinasoft.SSM.dao.IUserDao;
import com.chinasoft.SSM.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService{
	@Resource  
    private IUserDao userDao;
	
	@Override
	public List<Map<String, Object>> selectAll() {
		// TODO 自动生成的方法存根
		return userDao.selectAll();
	}

}
