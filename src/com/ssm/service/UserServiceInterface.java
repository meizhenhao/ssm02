package com.ssm.service;

import java.util.ArrayList;

import com.ssm.pojo.User;


public interface UserServiceInterface {
	public boolean addUser(User user);
	
	public ArrayList<User> findAllUsers();
}
