/**
 * 
 */
package com.salary.spring.service;

import java.util.List;

import com.salary.spring.entity.User;

/**
 * @author Emrul
 *
 */
public interface UserService {
	
	public List<User> selectAll();
	
	public void insert(User user);

}
