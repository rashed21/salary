package com.salary.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.salary.spring.entity.Institution;
import com.salary.spring.entity.User;
import com.salary.spring.service.InstitutionService;




/**
 * @author Emrul
 *
 */
@Controller
public class InstitutionControl {

	
	
	@Autowired
	InstitutionService institutionSer;
	
	
	@RequestMapping(value="/institute" ,method=RequestMethod.GET)
	public ModelAndView index(ModelMap m,Institution value, ModelAndView mv){
		
		List<Institution> insList= institutionSer.selectAll();

	m.addAttribute("institute", new Institution());
	
	


//		//return back to institution.jsp
		ModelAndView model = new ModelAndView("institution");
		model.addObject("lists", insList);
		
		return model;	
	}
	
	
	@RequestMapping(value="/insertPage" ,method=RequestMethod.POST)	
	public String insert(Institution institution){	
		
		
		if(institution.getInsId()>0){
			institutionSer.update(institution);
		}else {
			institution.setUserId(1);
			institutionSer.insert(institution);
		}
		
		return "redirect:/institute";
		
	}
	
	
	@RequestMapping(value = "/delete/{mid}", method = RequestMethod.GET)
    public String delete(@PathVariable("mid") Integer m){        
		institutionSer.delete(m);
        return "redirect:/institute";
    }
	
	
	
	 @RequestMapping(value = "/update/{mid}", method = RequestMethod.GET)
	    public ModelAndView update(@PathVariable("mid") Integer mi, ModelMap m){
	        
	        
	       m.addAttribute("institute", institutionSer.getById(mi));
	      
	       List<Institution> insList= institutionSer.selectAll();
	       
	 
	     ModelAndView model = new ModelAndView("institution");
			model.addObject("lists", insList);
			
			return model;	
	    }
	
	
}
