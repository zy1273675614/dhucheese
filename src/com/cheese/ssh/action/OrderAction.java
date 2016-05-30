package com.cheese.ssh.action;

import com.cheese.ssh.beans.Order;
import com.cheese.ssh.beans.Task;
import com.cheese.ssh.beans.User;
import com.cheese.ssh.service.IOrderManagerService;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONObject;


public class OrderAction extends ActionSupport {
	
	private IOrderManagerService orderManager;
	
	private User user;
	
	private Task task;
	
	private Order order;
	
	private JSONObject flag;
	
	public String receiveOrder(){
		String json = orderManager.saveOrder(user, task);	
		
		return SUCCESS;
	}
	
	/* getter and setter functions */
	public IOrderManagerService getOrderManager() {
		return orderManager;
	}

	public void setOrderManager(IOrderManagerService orderManager) {
		this.orderManager = orderManager;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Task getTask() {
		return task;
	}

	public void setTask(Task task) {
		this.task = task;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {  
		this.order = order;
	}	

}
