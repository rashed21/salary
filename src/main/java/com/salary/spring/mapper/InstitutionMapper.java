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

	@Select("select * from insInfo ")
	public List<Institution> selectAll();
	
	@Insert("insert into insInfo(userId, insName, location) "
			+ "values(#{userId}, #{insName}, #{location})")
	public void insert(Institution institution);
	
	@Update("UPDATE insInfo SET insName=#{insName}, location=#{location} WHERE insId=#{insId}")
	public void update(Institution institution);
	
	@Delete("DELETE FROM insInfo WHERE insId=#{insId}")
	public void delete(Integer institution);
	
	@Select("select * from insInfo WHERE insId=#{id}")
	public Institution getById(Integer id) ;
}
