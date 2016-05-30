package com.cheese.ssh.service;

import com.cheese.ssh.beans.Order;
import com.cheese.ssh.beans.Task;
import com.cheese.ssh.beans.User;

public interface IOrderManagerService {

	String saveOrder(User user, Task task);

}
