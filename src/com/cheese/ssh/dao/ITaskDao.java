package com.cheese.ssh.dao;

import java.util.List;

import org.hibernate.HibernateException;

import com.cheese.ssh.beans.Task;
import com.cheese.ssh.beans.User;

public interface ITaskDao {
	
	List<Task> findAllTask();

	Task findTaskById(Integer id);

	public void save(Task task) throws HibernateException;

	List<Task> findTask();
}
