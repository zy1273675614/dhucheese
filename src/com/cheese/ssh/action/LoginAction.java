package com.cheese.ssh.action;

import com.cheese.ssh.beans.User;
import com.cheese.ssh.service.IUserManagerService;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private User user;//receive bean from jsp

	private IUserManagerService userManager;//interface for user management
	
	private String result;
	
	//user login
	public String login() throws Exception {
		// TODO Auto-generated method stub
		//return "success" or "error"
		return userManager.checkLogin(user);
	}
	
	public String showUser() throws Exception {
		return SUCCESS;
	}
	
	public String logout() throws Exception {
		return userManager.logout();
	}

	/* getter and setters*/
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public IUserManagerService getUserManager() {
		return userManager;
	}

	public void setUserManager(IUserManagerService userManager) {
		this.userManager = userManager;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	
}
