package com.cheese.ssh.serviceImpl;

import java.util.List;

import com.cheese.ssh.beans.Task;
import com.cheese.ssh.dao.ITaskDao;
import com.cheese.ssh.service.ITaskManagerService;

public class TaskManagerServiceImpl implements ITaskManagerService{
	
	private ITaskDao taskDao;

	@Override
	public List<Task> findAllTask() {
		return taskDao.findAllTask();
	}

	/* getter and setter */
	public ITaskDao getTaskDao() {
		return taskDao;
	}

	public void setTaskDao(ITaskDao taskDao) {
		this.taskDao = taskDao;
	}
	
	

}
