package com.cheese.ssh.serviceImpl;

import java.util.Date;
import java.util.List;

import com.cheese.ssh.beans.Orders;
import com.cheese.ssh.beans.Task;
import com.cheese.ssh.beans.User;
import com.cheese.ssh.dao.IOrderDao;
import com.cheese.ssh.service.IOrderManagerService;

public class OrderManagerServiceImpl implements IOrderManagerService{
	
	private IOrderDao orderDao;

	@Override
	public String saveOrder(User user, Task task) {
		// TODO Auto-generated method stub
		Orders order = new Orders();
		order.setUserId(user.getId());
		order.setTaskId(task.getId());
		order.setRecDate(new Date());
		return orderDao.save(order);
	}

	/*某一任务的作品*/
	@Override
	public List<Orders> findorder() {
		return orderDao.findorder();
		
	} 
	
	public IOrderDao getOrderDao() {
		return orderDao;
	}
	public void setOrderDao(IOrderDao orderDao) {
		this.orderDao = orderDao;
	}	
}
