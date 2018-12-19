package com.ssm.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.ssm.pojo.User;

@Service
public class UserServiceImpl implements UserServiceInterface{
	
	private static ArrayList<User> List = new ArrayList<>();
	
	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		if("教师".equals(user.getCarrer())){
			return false;
		}
		List.add(user);
		return true;
	}

	@Override
	public ArrayList<User> findAllUsers() {
		// TODO Auto-generated method stub
		return List;
	}

}
