package com.salary.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.salary.spring.entity.User;
import com.salary.spring.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserMapper	usermapper;

	@Transactional(readOnly=true)
	public List<User> selectAll() {
		return usermapper.selectAll();
	}

	@Transactional
	public void insert(User user) {
		usermapper.insert(user);
	}

}
