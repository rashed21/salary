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

import com.salary.spring.entity.Employee;
import com.salary.spring.entity.Institution;
import com.salary.spring.entity.Salary;
import com.salary.spring.service.EmployeeService;
import com.salary.spring.service.InstitutionService;



/**
 * @author Emrul
 *
 */
@Controller
public class employeeController {

	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	InstitutionService institutionSer;
	
	
	@RequestMapping(value="/employee", method=RequestMethod.GET)
	public ModelAndView index(ModelMap m, ModelAndView mv,Employee employee){
		List<Institution> insList= institutionSer.selectAll();		
		m.addAttribute("employee", new Employee());				
		ModelAndView model = new ModelAndView("employee");
		model.addObject("lists", insList);
				
		return model;
	}
	
	
	@RequestMapping(value="/insertEmp/{curIn}" ,method=RequestMethod.POST)	
	public ModelAndView insert(@PathVariable("curIn") Integer currentIns,Employee employee,ModelMap m, ModelAndView mv){	
		
		System.out.println(currentIns);
		List<Institution> insList= institutionSer.selectAll();
		
		employee.setInstitute(currentIns);
		employeeService.insert(employee);
		List<Employee> employeeList= employeeService.allEmployeeOnInstute(currentIns);
		
		m.addAttribute("employee", new Employee());
		
		
		ModelAndView model = new ModelAndView("employee");
		model.addObject("lists", insList);
		model.addObject("currentInst", institutionSer.getById(currentIns));		
		model.addObject("employeeList", employeeList);
		
		return model;
	}
	
	
	@RequestMapping(value="/viewEmp" ,method=RequestMethod.POST)	
	public ModelAndView view(Employee employee,ModelMap m, ModelAndView mv){	
			
		List<Institution> insList= institutionSer.selectAll();
		
		
		List<Employee> employeeList= employeeService.allEmployeeOnInstute(employee.getInstitute());
		
		m.addAttribute("employee", new Employee());
		
		
		ModelAndView model = new ModelAndView("employee");
		model.addObject("lists", insList);
		model.addObject("currentInst", institutionSer.getById(employee.getInstitute()));		
		model.addObject("employeeList", employeeList);
		return model;
		
	}
	
	
	@RequestMapping(value = "/deleteEmp/{mid},{instute}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("mid") Integer m, @PathVariable("instute") Integer inst,ModelMap map){        
		employeeService.delete(m);
		List<Institution> insList= institutionSer.selectAll();
		List<Employee> employeeList= employeeService.allEmployeeOnInstute(inst);
		
		map.addAttribute("employee", new Employee());

		ModelAndView model = new ModelAndView("employee");
		model.addObject("lists", insList);
	
		model.addObject("employeeList", employeeList);
		return model;
		
    }
	
	
	
}
