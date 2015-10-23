package com.salary.spring.mapper;

import java.io.Serializable;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.salary.spring.entity.Employee;
import com.salary.spring.entity.Institution;

public interface EmployeeMapper extends Serializable {
	
	
	@Insert("insert into employee(institute, name, area, post, contact, dateOfBirth, joinDate, gender, subject) "
			+ "values(#{institute}, #{name}, #{area},#{post}, #{contact}, #{dateOfBirth},#{joinDate}, #{gender}, #{subject})")
	public void insert(Employee employee);

	
	@Select("select * from employee WHERE institute=#{id}")
	 public List<Employee> allEmployeeOnInstute(Integer id);
	
	@Delete("DELETE FROM employee WHERE empId=#{id}")
	public void delete(Integer id);
	
}
