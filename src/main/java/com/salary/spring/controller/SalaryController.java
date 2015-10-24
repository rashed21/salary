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
import com.salary.spring.entity.Employee;
import com.salary.spring.entity.Institution;
import com.salary.spring.entity.Salary;
import com.salary.spring.service.EmployeeService;
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
	
	@Autowired
	EmployeeService employeeService;
	
	Calculation calculation=new Calculation();
	
	
	public Calculation getCalculation() {
		return calculation;
	}


	public void setCalculation(Calculation calculation) {
		this.calculation = calculation;
	}


	@RequestMapping(value="/salary" ,method=RequestMethod.GET)
	public ModelAndView index(ModelMap m,Salary value, ModelAndView mv){
		
		List<Salary> salaryList= salaryService.selectAll(11);
		
		List<Salary> salGroupBy= salaryService.selectAllGroubBy(11);
//		for listitution List
		List<Institution> insList= institutionSer.selectAll();
		
		
		
		m.addAttribute("salary", new Salary());
		m.addAttribute("institute", new Institution());	
		m.addAttribute("employees", new Employee());
		
//		//return back to salary.jsp
		ModelAndView model = new ModelAndView("salary");
		model.addObject("saLists", salaryList);
		model.addObject("lists", insList);
		model.addObject("salaryListGroupBy", salGroupBy);
		return model;	
	}
	
//	@RequestMapping(value="/userEmployees",method=RequestMethod.POST)	
//	public ModelAndView institution(Employee employ,ModelAndView mv,ModelMap m){
//		List<Institution> insList= institutionSer.selectAll();
//		List<Employee> employeeList= employeeService.allEmployeeOnInstute(employ.getInstitute());
//		
//		ModelAndView model = new ModelAndView("salary");
//		model.addObject("lists", insList);
//	model.addObject("emplList", employeeList);
//		return model;		
//	}
//	
	
	
//	@RequestMapping(value="/addSalary" ,method=RequestMethod.POST)	
//	public String insert(Salary salary){
//		Salary calculateSalary=new Salary();
//		calculateSalary=calculation.calculation(salary);		
//		salaryService.insert(calculateSalary);
//		
////		Institution institution=new Institution();
////		institution=institutionSer.getByName("0,Karatitola");
////		System.out.println(institution.getLocation());	
//		return "redirect:/salary";
//		
//	}
//	
	
	@RequestMapping(value="/userEmployees" ,method=RequestMethod.POST)	
	public ModelAndView insert(Salary salary,Employee employ){
		
		if(salary.getBsaic()>2000){
			Salary calculateSalary=new Salary();
			calculateSalary=calculation.calculation(salary);		
			salaryService.insert(calculateSalary);
			salary.setBsaic(00.00);
			
		}
	
				
		List<Institution> insList= institutionSer.selectAll();
		List<Employee> employeeList= employeeService.allEmployeeOnInstute(salary.getInstitutionFk());
		
		ModelAndView model = new ModelAndView("salary");
		model.addObject("lists", insList);
		model.addObject("emplList", employeeList);
		model.addObject("currentInst", institutionSer.getById(salary.getInstitutionFk()));
		model.addObject("currentEmployee",employeeService.getById(salary.getEmpIdfk()));
		model.addObject("salaryOnInstitute", salaryService.selectAllSalaryOnInstitute(salary.getInstitutionFk()));
		
		return model;
		
	}
	
	@RequestMapping(value = "/deleteSal/{mid}", method = RequestMethod.GET)
    public String delete(@PathVariable("mid") Integer m){        
		salaryService.delete(m);
        return "redirect:/salary";
    }
}
