/**
 * 
 */
package com.salary.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.salary.spring.entity.Employee;
import com.salary.spring.mapper.EmployeeMapper;


/**
 * @author Emrul
 *
 */
@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeMapper employeeMapper;
	
	@Transactional(readOnly=true)
	public List<Employee> selectAll(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional(readOnly=true)
	public List<Employee> selectAllGroubBy(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void insert(Employee employee) {
		employeeMapper.insert(employee);

	}

	@Transactional
	public void update(Employee employee) {
		// TODO Auto-generated method stub

	}
	@Transactional
	public void delete(Integer id) {
		employeeMapper.delete(id);
	}

	@Transactional(readOnly=true)
	public Employee getById(Integer id) {
		return employeeMapper.getByID(id);
	}

	
	@Transactional(readOnly=true)
	public List<Employee> allEmployeeOnInstute(Integer id) {
		
		return employeeMapper.allEmployeeOnInstute(id);
	}

}
