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
		    	session.put("username", newUser.getUsername());//将用户名保存在session中
			/*String b=(String) session.put("username", user.getUsername());*/
			session.put("userid", newUser.getId());
			session.put("userrealname", newUser.getRealname());
			Integer sex=newUser.getGender();
			String usersex;
			if(sex==1){
				usersex="男";
			}else{
				usersex="女";
			}
			session.put("usersex", usersex);
			session.put("userbirthday", newUser.getBirthday());
			session.put("userphone", newUser.getPhone());
			session.put("usermail", newUser.getMail());
			session.put("userschool", newUser.getSchool());
			session.put("usermajor", newUser.getMajor());
			session.put("useraddress", newUser.getAddress());
			session.put("userhometown", newUser.getHometown());
			session.put("usercompany", newUser.getCompany());
			Integer t=newUser.getUsertype();
			String usertype;
			switch(t){
				case 1:usertype="威客";break;
				case 2:usertype="企业";break;
				case 3:usertype="管理员";break;
				default:usertype="失效";break;
			}
			session.put("usertype", usertype);
			//int a=(int) session.put("userid", newUser.getId());
			//System.out.println(a);
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
	
	/**
	 * 修改个人信息
	 */
	/*@Override
	public String changeuser(User user) {
		userDao.changeuser(user);
		return "success";
		// TODO Auto-generated method stub
		
	} */

	/* getter and setter functions*/
	public IUserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public String changeuser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

}
