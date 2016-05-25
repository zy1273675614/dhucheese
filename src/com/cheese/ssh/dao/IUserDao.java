package com.cheese.ssh.dao;

import java.util.List;

import org.hibernate.HibernateException;

import com.cheese.ssh.beans.User;

public interface IUserDao {

	  public void save(User user) throws HibernateException;

	List<User> findAllUser();
	User findUserById(long id);


	User findUser(User user);  
}
