package com.cheese.ssh.dao;

import java.util.List;

import com.cheese.ssh.beans.Orders;
import com.cheese.ssh.beans.Task;

public interface IOrderDao {

	String save(Orders order);

	List<Orders> findorder();

}
