package com.salary.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.salary.spring.entity.Salary;
import com.salary.spring.mapper.SalaryMapper;


@Service
public class SalaryServiceImpl implements SalaryService {

	
	@Autowired
	SalaryMapper salaryMapper;
	
	@Transactional(readOnly=true)
	public List<Salary> selectAll() {
		
		return salaryMapper.selectAll();
	}

	
	@Transactional(readOnly=true)
	public List<Salary> selectAllGroubBy() {
		return salaryMapper.selectAllGroubBy();
	}
	@Transactional
	public void insert(Salary salary) {
		salaryMapper.insert(salary);

	}
	@Transactional
	public void update(Salary salary) {
		salaryMapper.update(salary);

	}

	@Transactional
	public void delete(Integer id) {
		salaryMapper.delete(id);

	}
	@Transactional(readOnly=true)
	public Salary getById(Integer id) {		
		return salaryMapper.getById(id);
	}


}
