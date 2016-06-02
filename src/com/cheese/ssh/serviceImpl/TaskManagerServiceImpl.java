package com.cheese.ssh.serviceImpl;

import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;

import com.cheese.ssh.beans.Task;
import com.cheese.ssh.dao.ITaskDao;
import com.cheese.ssh.service.ITaskManagerService;
import com.opensymphony.xwork2.ActionContext;

public class TaskManagerServiceImpl implements ITaskManagerService{
	
	private ITaskDao taskDao;
	private Map<String,Object> session;

	@Override
	public List<Task> findAllTask() {
		return taskDao.findAllTask();
	}
	
	/*我的任务 */
	@Override
	public List<Task> mytask() {
		// TODO Auto-generated method stub
		return taskDao.findTask();
		
	} 

	/* getter and setter */
	public ITaskDao getTaskDao() {
		return taskDao;
	}

	public void setTaskDao(ITaskDao taskDao) {
		this.taskDao = taskDao;
	}

	@Override
	public Task findTask(Integer id) {
		session = ActionContext.getContext().getSession();//获取session对象
		session.put("taskid",id );
		return taskDao.findTaskById(id);
	}
	
	@Override
	public boolean setTask(Task task){
		// TODO Auto-generated method stub
		taskDao.save(task);
    	System.out.println("register task success");
    	return true;
	}

}
