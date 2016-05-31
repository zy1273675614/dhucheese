package com.cheese.ssh.daoImpl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import com.cheese.ssh.beans.User;
import com.cheese.ssh.dao.IUserDao;
import com.opensymphony.xwork2.ActionContext;

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

	/*@Override
	public User changeuser(User user) {
		String a = user.getUsername();
		System.out.println(555 + a);
		Map<String,Object> sess = ActionContext.getContext().getSession();
		Integer b=(Integer) sess.get("userid");
		System.out.println(b);
		String d = user.getRealname();
		System.out.println(555 + d);
		Session session = getSession();
		session.getTransaction().begin();
		Query q = session.createQuery(
				"update user set user.username=:username,user.password=:password,user.realname=:realname,user.gender=:gender,"
				+ "user.birthday=:birthday,user.phone=:phone,user.mail=:mail,user.school=:school,user.major=:major,"
				+ "user.address=:address,user.hometown=:hometown,user.company=:company,user.imageaddr=:imageaddr "
				+ "AND user.usertype=:usertype WHERE user.id=:id");
		q.setInteger("id", user.getId());
		q.setString("username", user.getUsername());
		String c = user.getUsername();
		System.out.println(555 + c);
		q.setString("password", user.getPassword());
		q.setString("realname", user.getRealname());
		q.setInteger("gender", user.getGender());
		q.setDate("birthday", user.getBirthday());
		q.setString("phone", user.getPhone());
		q.setString("mail", user.getMail());
		q.setString("school", user.getSchool());
		q.setString("major", user.getMajor());
		q.setString("address", user.getAddress());
		q.setString("hometown", user.getHometown());
		q.setString("company", user.getCompany());
		q.setString("imageaddr", user.getImageaddr());
		q.setInteger("usertype", user.getUsertype());
		q.executeUpdate();
		return user;

	}*/

	/* getter and setter functions */
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		System.out.println("sessionFactory set succ");
	}

	@Override
	public User changeuser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	

}
