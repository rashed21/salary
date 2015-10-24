/**
 * 
 */
package com.salary.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.salary.spring.entity.Login;
import com.salary.spring.entity.User;
import com.salary.spring.service.UserService;

/**
 * @author Emrul
 *
 */

@Controller
public class Index {
	
	@Autowired
	UserService	userservice;
	
	@RequestMapping(value="/" ,method=RequestMethod.GET)
	public String index(User user){
		
		User userLogin = new User();
		
		
		User userentity = new User();
	
		
		return "index";
		
	}

	
	
	
	@RequestMapping(value="/login" ,method=RequestMethod.POST)
	public String insert(User user){
		User userLogin = new User();
		userservice.insert(user);
		
		return "redirect:/";
		
	}
	
	
	
	
}
