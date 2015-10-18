/**
 * 
 */
package com.salary.spring.service;

import java.util.List;

import com.salary.spring.entity.Salary;



/**
 * @author Emrul
 *
 */
public interface SalaryService {

	
public List<Salary> selectAll();
	
	public void insert(Salary salary);
	
	public void update(Salary salary);
	
	public void delete(Integer id);
	
	 public Salary getById(Integer id);
	
}
