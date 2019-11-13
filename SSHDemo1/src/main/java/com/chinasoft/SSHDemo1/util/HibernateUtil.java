package com.chinasoft.SSHDemo1.util;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtil {
	private static SessionFactory sessionFactory;

    //保证单例模式
    private HibernateUtil()
    {

    }

    //公有的静态方法
    public static SessionFactory getSessionFactory()
    {
        if (sessionFactory == null)
        {
            Configuration configuration = new Configuration().configure();
            ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure().build();
            sessionFactory = configuration.buildSessionFactory(serviceRegistry);
            return sessionFactory;
        }
        else
        {
            return sessionFactory;
        }
    }
}
