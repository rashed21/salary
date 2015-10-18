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






import com.salary.spring.businesslogic.Calculation;
import com.salary.spring.entity.Institution;
import com.salary.spring.entity.Salary;
import com.salary.spring.service.SalaryService;

/**
 * @author Emrul
 *
 */
@Controller
public class SalaryController {

	
	@Autowired
	SalaryService salaryService;
	
	Calculation calculation=new Calculation();
	
	
	public Calculation getCalculation() {
		return calculation;
	}


	public void setCalculation(Calculation calculation) {
		this.calculation = calculation;
	}


	@RequestMapping(value="/salary" ,method=RequestMethod.GET)
	public ModelAndView index(ModelMap m,Salary value, ModelAndView mv){
		
		List<Salary> salaryList= salaryService.selectAll();
	m.addAttribute("salary", new Salary());
//		//return back to institution.jsp
		ModelAndView model = new ModelAndView("salary");
		model.addObject("saLists", salaryList);
		
		return model;	
	}
	
	
	@RequestMapping(value="/addSalary" ,method=RequestMethod.POST)	
	public String insert(Salary salary){
		Salary calculateSalary=new Salary();
		calculateSalary=calculation.calculation(salary.getBsaic());
		calculateSalary.setEmpName(salary.getEmpName());
	//salary.setHomeRent=	calculation.calculation(salary.getBsaic());
		salaryService.insert(calculateSalary);
		

		return "redirect:/salary";
		
	}
	
	
	@RequestMapping(value = "/deleteSal/{mid}", method = RequestMethod.GET)
    public String delete(@PathVariable("mid") Integer m){        
		salaryService.delete(m);
        return "redirect:/salary";
    }
}
