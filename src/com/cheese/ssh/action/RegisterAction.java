package com.cheese.ssh.action;

import com.cheese.ssh.beans.User;
import com.cheese.ssh.service.IUserManagerService;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;
	private IUserManagerService userManager;
		
	public String execute(){
		try{
			userManager.regUser(user);  
			System.out.println(user.getUsername());
			return SUCCESS;
		}catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
	}
	
	public String loginFunc() {
		return userManager.checkLogin(user);
	}
	/* getter and setter functions*/

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

	

}
