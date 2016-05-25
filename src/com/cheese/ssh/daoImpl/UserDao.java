package com.cheese.ssh.daoImpl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import com.cheese.ssh.beans.User;
import com.cheese.ssh.dao.IUserDao;

public class UserDao implements IUserDao{
	
	private SessionFactory sessionFactory;
	
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void save(User user) throws HibernateException {
		// TODO Auto-generated method stub
		Session session = getSession();
		session.getTransaction().begin();
		session.save(user);
		session.getTransaction().commit();
		/*getSession().getTransaction().begin();
		getSession().save(user);
		getSession().getTransaction().commit();*/
		//getSession().save(user);
		
	}
	
	@Override
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		Session session = getSession();
		session.getTransaction().begin();
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(
				User.class);
		Iterator<User> it = criteria.list().iterator();
		session.getTransaction().commit();
		List<User> groupList = new ArrayList<User>();

		while (it.hasNext()) {
			User group = (User) it.next();
			groupList.add(group);
		}
		return groupList;

	}

	@Override
	public User findUserById(long id) {
		// TODO Auto-generated method stub
		Session session = getSession();
		session.getTransaction().begin();
		Query query = sessionFactory.getCurrentSession().createQuery(
				"FROM User WHERE id = :cId");
		query.setLong("cId", id);
		@SuppressWarnings("unchecked")
		Iterator<User> it = query.list().iterator();
		session.getTransaction().commit();
		User group = new User();
		if (it.hasNext()) {
			group = (User) it.next();
			
		}
		return group;
	}
	
	/*return user's message for result if username and password are correct*/
	@Override
	public User findUser(User user) {
		Session session = getSession();
		session.getTransaction().begin();
		Query query = sessionFactory.getCurrentSession().createQuery(
				"FROM User WHERE username = :name AND password = :pwd");
		query.setString("name", user.getUsername());
		query.setString("pwd", user.getPassword());
		@SuppressWarnings("unchecked")
		Iterator<User> it = query.list().iterator();
		session.getTransaction().commit();
		User group = new User();
		if(it.hasNext()) {
			group = (User) it.next();
			return group;
		}
		return null;
	}

	/* getter and setter functions */
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		System.out.println("sessionFactory set succ");
	}

	

}
