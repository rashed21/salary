/**
 * 
 */
package com.salary.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Emrul
 *
 */
@Controller
public class Show {
	

	@RequestMapping(value="/show" ,method=RequestMethod.GET)
	public String index(ModelMap m){
		m.addAttribute("user", "rashed");
		return "showMessage";
	}

}
