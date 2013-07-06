package com.hotel.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class BaseHibernateDao {
    
    @Autowired
    private SessionFactory sessionFactory;
    	
    public void setSessionFactory(SessionFactory sessionFactory) {
    	this.sessionFactory = sessionFactory;
    }
    
    public SessionFactory getSessionFactory() {
    	return this.sessionFactory;
    }

    public Session getSession(){    	
    	return sessionFactory.getCurrentSession();
    }
    
}