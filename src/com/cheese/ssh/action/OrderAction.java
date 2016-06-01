package com.cheese.ssh.action;

import java.util.List;

import com.cheese.ssh.beans.Orders;
import com.cheese.ssh.beans.Task;
import com.cheese.ssh.beans.User;
import com.cheese.ssh.service.IOrderManagerService;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


public class OrderAction extends ActionSupport {
	
	private IOrderManagerService orderManager;
	//任务列表结果集
	private List<Orders> orderList;
	
	private User user;
	
	private Task task;
	
	private Orders order;
	
	private JSONObject flag;
	//JSON结果集
	private JSONArray result;
	
	public String receiveOrder(){
		String json = orderManager.saveOrder(user, task);	
		
		return SUCCESS;
	}
	
	/*某一任务的作品*/
	public String findorder(){
		//System.out.println("123");
		orderList=orderManager.findorder();
		System.out.println(orderList);
		result = JSONArray.fromObject(orderList);
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

	public Orders getOrder() {
		return order;
	}

	public void setOrder(Orders order) {  
		this.order = order;
	}	
	
	public JSONArray getResult() {
		return result;
	}

	public void setResult(JSONArray result) {
		this.result = result;
	}

}
