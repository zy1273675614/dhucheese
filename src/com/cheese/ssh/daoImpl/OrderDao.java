package com.cheese.ssh.daoImpl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.cheese.ssh.beans.Orders;
import com.cheese.ssh.beans.Task;
import com.cheese.ssh.beans.User;
import com.cheese.ssh.dao.IOrderDao;
import com.opensymphony.xwork2.ActionContext;

public class OrderDao implements IOrderDao{
	
	private SessionFactory sessionFactory;
	
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@Override
	public String save(Orders order) throws HibernateException {
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
	
	/*某个任务的作品*/
	@Override
	public List<Orders> findorder() {
		//System.out.println("a");
		Map<String,Object> sess = ActionContext.getContext().getSession();
		Integer taskid=(Integer) sess.get("taskid");
		System.out.println(taskid);
		Session session = getSession();
		session.getTransaction().begin();
		Query query = sessionFactory.getCurrentSession().createQuery(
				"FROM Orders WHERE taskId = :taskid ");
		query.setInteger("taskid", taskid);
		Iterator<Orders> it = query.list().iterator();
		session.getTransaction().commit();
		List<Orders> groupList = new ArrayList<Orders>();	
		while(it.hasNext()) {
			Orders group = (Orders) it.next();
			groupList.add(group);
		}
		System.out.println(groupList);
		return groupList;
		
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
