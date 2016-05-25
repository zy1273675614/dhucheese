package com.cheese.ssh.dao;

import java.util.List;

import com.cheese.ssh.beans.Task;

public interface ITaskDao {
	
	List<Task> findAllTask();

}
