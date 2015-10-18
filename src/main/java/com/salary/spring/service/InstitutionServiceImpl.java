package com.salary.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.salary.spring.entity.Institution;
import com.salary.spring.mapper.InstitutionMapper;

/**
 * @author Emrul
 *
 */

@Service
public class InstitutionServiceImpl implements InstitutionService {

	@Autowired
	InstitutionMapper institutionMapper;

	@Transactional(readOnly = true)
	public List<Institution> selectAll() {
		
		return institutionMapper.selectAll();
	}

	@Transactional
	public void insert(Institution institution) {

		institutionMapper.insert(institution);
	}

	@Transactional
	public void update(Institution institution) {
		institutionMapper.update(institution);

	}

	@Transactional
	public void delete(Integer institution) {
		institutionMapper.delete(institution);

	}
	
	
	@Transactional(readOnly = true)
	public Institution getById(Integer m) {		
		return institutionMapper.getById(m);
	}

}
