package com.cheese.ssh.serviceImpl;

import java.util.Date;

import com.cheese.ssh.beans.Order;
import com.cheese.ssh.beans.Task;
import com.cheese.ssh.beans.User;
import com.cheese.ssh.dao.IOrderDao;
import com.cheese.ssh.service.IOrderManagerService;

public class OrderManagerServiceImpl implements IOrderManagerService{
	
	private IOrderDao orderDao;

	@Override
	public String saveOrder(User user, Task task) {
		// TODO Auto-generated method stub
		Order order = new Order();
		order.setUserId(user.getId());
		order.setTaskId(task.getId());
		order.setRecDate(new Date());
		return orderDao.save(order);
	}

	public IOrderDao getOrderDao() {
		return orderDao;
	}
	public void setOrderDao(IOrderDao orderDao) {
		this.orderDao = orderDao;
	}	
}
