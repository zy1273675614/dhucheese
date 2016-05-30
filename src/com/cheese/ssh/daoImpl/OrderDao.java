package com.cheese.ssh.daoImpl;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.cheese.ssh.beans.Order;
import com.cheese.ssh.beans.Task;
import com.cheese.ssh.beans.User;
import com.cheese.ssh.dao.IOrderDao;

public class OrderDao implements IOrderDao{
	
	private SessionFactory sessionFactory;
	
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@Override
	public String save(Order order) throws HibernateException {
		// TODO Auto-generated method stub
		try{
		Session session = getSession();
		session.getTransaction().begin();
		session.save(order);
		session.getTransaction().commit();
		return "success";
		}catch(Exception e){
			e.getStackTrace();
			return "error";
		}
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}	

}
