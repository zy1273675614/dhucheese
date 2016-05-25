package com.cheese.ssh.action;

import java.util.List;

import com.cheese.ssh.beans.Task;
import com.cheese.ssh.service.ITaskManagerService;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONArray;

public class TaskAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//任务列表结果集
	private List<Task> taskList;
	//任务管理服务
	private ITaskManagerService taskManager;
	//JSON结果集
	private JSONArray result;
	
	/*查询所有的任务*/
	public String findAllTask(){
		taskList = taskManager.findAllTask();
		result = JSONArray.fromObject(taskList);
		return SUCCESS;
	}
	
	/* getter and setter functions*/	

	public ITaskManagerService getTaskManager() {
		return taskManager;
	}

	public List<Task> getTaskList() {
		return taskList;
	}

	public void setTaskList(List<Task> taskList) {
		this.taskList = taskList;
	}

	public void setTaskManager(ITaskManagerService taskManager) {
		this.taskManager = taskManager;
	}

	public JSONArray getResult() {
		return result;
	}

	public void setResult(JSONArray result) {
		this.result = result;
	}

	
	

}
