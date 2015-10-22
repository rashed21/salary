package com.salary.spring.service;

import java.util.List;

import com.salary.spring.entity.Institution;



public interface InstitutionService {

	public List<Institution> selectAll();
	
	public void insert(Institution institution);
	
	public void update(Institution institution);
	
	public void delete(Integer institution);
	
	 public Institution getById(Integer m);
	 public Institution getByName(String m);
	
}
