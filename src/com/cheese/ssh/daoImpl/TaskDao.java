package com.cheese.ssh.daoImpl;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.cheese.ssh.beans.Task;
import com.cheese.ssh.beans.User;
import com.cheese.ssh.dao.ITaskDao;
import com.opensymphony.xwork2.ActionContext;

public class TaskDao implements ITaskDao{
	
	private SessionFactory sessionFactory;
	User user=new User();

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
	
	/*发布任务*/
	@Override
	public void save(Task task) throws HibernateException {
		// TODO Auto-generated method stub
		Map<String,Object> sess = ActionContext.getContext().getSession();
		Integer author=(Integer) sess.get("userid");
		//System.out.println(100+author);
		task.setAuthor(author);
		Integer status = 1;
		task.setStatus(status);
		Date releaseDate = new Date();//显示日期
		task.setRel(releaseDate);
		Session session = getSession();
		session.getTransaction().begin();
		
		
		session.save(task);
		
		session.getTransaction().commit();
		
	}
	
	/*查看我发布的任务*/
	public List<Task> findTask() {
		//System.out.println("a");
		Map<String,Object> sess = ActionContext.getContext().getSession();
		Integer author=(Integer) sess.get("userid");
		System.out.println(author);
		Session session = getSession();
		session.getTransaction().begin();
		Query query = sessionFactory.getCurrentSession().createQuery(
				"FROM Task WHERE author = :author");
		query.setInteger("author", author);
		Iterator<Task> it = query.list().iterator();
		session.getTransaction().commit();
		List<Task> groupList = new ArrayList<Task>();	
		while(it.hasNext()) {
			Task group = (Task) it.next();
			groupList.add(group);
		}
		System.out.println(groupList);
		return groupList;
		
	}
	
	/* getter and setter */
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
