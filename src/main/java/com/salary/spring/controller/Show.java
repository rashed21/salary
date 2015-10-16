/**
 * 
 */
package com.salary.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.salary.spring.entity.User;
import com.salary.spring.service.UserService;

/**
 * @author Emrul
 *
 */
@Controller
public class Show {
	
	@Autowired
	UserService	userservice;

	@RequestMapping(value="/show" ,method=RequestMethod.GET)
	public String index(ModelMap m, User user){
		
		List<User> userlist= userservice.selectAll();
		User userentity = new User();
		if (userlist.size()>0) {
			userentity =userlist.get(0);
		}
		m.addAttribute("user", new User());
		m.addAttribute("firstname", userentity.getFirstName());
		return "showMessage";
	}
	
	
	@RequestMapping(value="/insert" ,method=RequestMethod.POST)
	public String insert(User u){
		
		userservice.insert(u);
		
		return "redirect:/show";
		
	}

}
