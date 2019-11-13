package com.chinasoft.SSHDemo1.dao.impl;
import com.chinasoft.SSHDemo1.dao.UserDao;
import com.chinasoft.SSHDemo1.model.Goods;
import com.chinasoft.SSHDemo1.model.User;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Repository("userDao")
public class UserDaoImpl extends HibernateDaoSupport implements UserDao{
	//这里的属性名一定要和配置中的属性名一致
    @Autowired
    private SessionFactory sessionFactory;

	@Override
	 @Transactional(propagation = Propagation.REQUIRED)
	public User getByName(String name) {
		 Session session = sessionFactory.getCurrentSession();
	        //根据id查询,结果返回 User.class
	        User user = (User)session.get(User.class, 2);
	        //将所有的数据查询出来并放到List集合里 User是表对应的实例名称
	        List users = session.createQuery("from User where name='" + name + "'").list();
	       if(!users.toString().equals("[]")){
	    	   return (User) users.get(0);
	       }else{
	    	   return null;
	       }
	        
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public List<Object[]> getByUser(String name) {
		// TODO Auto-generated method stub
		 Session session = sessionFactory.getCurrentSession();
		 List<Object[]> list=session.createQuery("from User as tu join tu.goods as  g  where tu.name='"+name+ "'").list();
		
		 return list;
	}
    
    
    
    
    
    
}
