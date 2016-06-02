package com.cheese.ssh.service;

import java.util.List;

import com.cheese.ssh.beans.Orders;
import com.cheese.ssh.beans.Task;
import com.cheese.ssh.beans.User;

public interface IOrderManagerService {

	String saveOrder(User user, Task task);

	List<Orders> findorder();

}
