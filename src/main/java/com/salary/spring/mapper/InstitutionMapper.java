package com.salary.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.salary.spring.entity.Institution;
import com.salary.spring.entity.User;



/**
 * @author Emrul
 *
 */

public interface InstitutionMapper {

	@Select("select * from insinfo ")
	public List<Institution> selectAll();
	
	@Insert("insert into insinfo(userId, insName, location) "
			+ "values(#{userId}, #{insName}, #{location})")
	public void insert(Institution institution);
	
	@Update("UPDATE insinfo SET insName=#{insName}, location=#{location} WHERE insId=#{insId}")
	public void update(Institution institution);
	
	@Delete("DELETE FROM insinfo WHERE insId=#{insId}")
	public void delete(Integer institution);
	
	@Select("select * from insinfo WHERE insId=#{id}")
	public Institution getById(Integer id) ;
	
	@Select("select * from insinfo WHERE insName=#{name}")
	public Institution getByName(String name) ;
	
	
	
}
