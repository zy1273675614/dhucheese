package com.cheese.ssh.serviceImpl;

import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.cheese.ssh.beans.User;
import com.cheese.ssh.dao.IUserDao;
import com.cheese.ssh.service.IUserManagerService;
import com.opensymphony.xwork2.ActionContext;

public class UserManagerServiceImpl implements IUserManagerService{

	
	private IUserDao userDao;	
	private Map<String,Object> session;

	/* user register */
	@Override  
    public boolean regUser(User user) throws HibernateException {
		
    	//BeanUtils.copyProperties(userForm, user);
    	//baseDao.saveObject(user);
    	userDao.save(user);
    	System.out.println("register user success");
    	return true;
    }	

	/* check username and password */
	@Override
	public String checkLogin(User user) {
		// TODO Auto-generated method stub
		User newUser = null;
		newUser = userDao.findUser(user);
		if(newUser != null){
			session = ActionContext.getContext().getSession();//获取session对象
			session.put("username", user.getUsername());//将用户名保存在session中
			return "success";
		}
		return "error";
	} 

	@Override
	public String logout() {
		session = ActionContext.getContext().getSession();
		session.remove("username");
		return "success";
	}
	
	/* getter and setter functions*/
	public IUserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

}
