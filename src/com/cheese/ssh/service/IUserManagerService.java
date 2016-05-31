package com.cheese.ssh.service;

import com.cheese.ssh.beans.User;

public interface IUserManagerService {

	boolean regUser(User user);

	String checkLogin(User user);

	String logout();

	String changeuser(User user);
}
