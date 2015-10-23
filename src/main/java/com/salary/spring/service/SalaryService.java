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

	
public List<Salary> selectAll(Integer id);

public List<Salary> selectAllGroubBy(Integer id);
	
	public void insert(Salary salary);
	
	public void update(Salary salary);
	
	public void delete(Integer id);
	
	 public Salary getById(Integer id);
	
}
