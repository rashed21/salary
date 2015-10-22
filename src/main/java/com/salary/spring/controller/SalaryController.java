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
import com.salary.spring.service.InstitutionService;
import com.salary.spring.service.SalaryService;

/**
 * @author Emrul
 *
 */
@Controller
public class SalaryController {

	
	@Autowired
	SalaryService salaryService;
	
	@Autowired
	InstitutionService institutionSer;
	
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
		
		List<Salary> salGroupBy= salaryService.selectAllGroubBy();
//		for listitution List
		List<Institution> insList= institutionSer.selectAll();
		
		
		
		m.addAttribute("salary", new Salary());
		m.addAttribute("institute", new Institution());	
		
//		//return back to salary.jsp
		ModelAndView model = new ModelAndView("salary");
		model.addObject("saLists", salaryList);
		model.addObject("lists", insList);
		model.addObject("salaryListGroupBy", salGroupBy);
		return model;	
	}
	
	
	@RequestMapping(value="/addSalary" ,method=RequestMethod.POST)	
	public String insert(Salary salary){
		Salary calculateSalary=new Salary();
		calculateSalary=calculation.calculation(salary);		
		salaryService.insert(calculateSalary);
		
		Institution institution=new Institution();
		institution=institutionSer.getByName("0,Karatitola");
	System.out.println(institution.getLocation());
		

		return "redirect:/salary";
		
	}
	
	
	@RequestMapping(value = "/deleteSal/{mid}", method = RequestMethod.GET)
    public String delete(@PathVariable("mid") Integer m){        
		salaryService.delete(m);
        return "redirect:/salary";
    }
}
