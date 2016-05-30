package com.cheese.ssh.daoImpl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.cheese.ssh.beans.Task;
import com.cheese.ssh.beans.User;
import com.cheese.ssh.dao.ITaskDao;

public class TaskDao implements ITaskDao{
	
	private SessionFactory sessionFactory;
	
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@Override
	public List<Task> findAllTask() {
		// TODO Auto-generated method stub
		Session session = getSession();
		session.getTransaction().begin();
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(
				Task.class);
		Iterator<Task> it = criteria.list().iterator();
		session.getTransaction().commit();
		List<Task> groupList = new ArrayList<Task>();
		while (it.hasNext()) {
			Task group = (Task) it.next();
			groupList.add(group);
		}
		return groupList;
	}

	
	@Override
	public Task findTaskById(Integer id) {
		Session session = getSession();
		session.getTransaction().begin();
		Query query = session.createQuery(
				"FROM Task WHERE id = :tId");
		query.setInteger("tId", id);		
		@SuppressWarnings("unchecked")
		Iterator<Task> it = query.list().iterator();
		session.getTransaction().commit();
		Task task = new Task();
		if (it.hasNext()) {
			task = (Task)it.next();			
		}
		return task;
	}
	
	
	/* getter and setter */
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
