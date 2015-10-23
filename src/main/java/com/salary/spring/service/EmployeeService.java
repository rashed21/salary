/**
 * 
 */
package com.salary.spring.service;

import java.util.List;

import com.salary.spring.entity.Employee;



/**
 * @author Emrul
 *
 */
public interface EmployeeService {

	public List<Employee> selectAll(Integer id);
	
	public List<Employee> allEmployeeOnInstute(Integer id);

	public List<Employee> selectAllGroubBy(Integer id);
		
	public void insert(Employee employee);
		
	public void update(Employee employee);
		
	public void delete(Integer id);
		
	public Employee getById(Integer id);
}
