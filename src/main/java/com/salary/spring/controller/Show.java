/**
 * 
 */
package com.salary.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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

	@RequestMapping(value="/show/{log}" ,method=RequestMethod.GET)
	public ModelAndView index(@PathVariable("log") String loginVal,ModelMap m, User user){
		
		List<User> userlist= userservice.selectAll();
		User userentity = new User();
		if (userlist.size()>0) {
			userentity =userlist.get(0);
		}
		m.addAttribute("loginVal", loginVal);
		System.out.println(loginVal);
		m.addAttribute("firstname", userentity.getFirstName());

		ModelAndView model = new ModelAndView("showMessage");
		model.addObject("lists", userlist);	
		return model;
		
	}
	
	@RequestMapping(value="/show" ,method=RequestMethod.GET)
	public ModelAndView index(ModelMap m, User user){
		
		List<User> userlist= userservice.selectAll();
		User userentity = new User();
		if (userlist.size()>0) {
			userentity =userlist.get(0);
		}
	
		m.addAttribute("firstname", userentity.getFirstName());

		ModelAndView model = new ModelAndView("showMessage");
		model.addObject("lists", userlist);	
		return model;
		
	}
	
	
	@RequestMapping(value="/insert" ,method=RequestMethod.POST)
	public String insert(ModelMap m, User u){
		
		userservice.insert(u);
		m.addAttribute("loginVal", "10");
		
//		ModelAndView model = new ModelAndView("showMessage");
		
		 return "redirect:/salary";
		
	}

	
	


}
