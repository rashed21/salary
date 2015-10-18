/**
 * 
 */
package com.salary.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.salary.spring.entity.Salary;

/**
 * @author Emrul
 *
 */
public interface SalaryMapper  {
	
	
	@Select("select * from salarys ")
	public List<Salary> selectAll();
	
	
	@Insert("insert into salarys(empName, bsaic, homeRent, medical, tifin,transport, education, extra, others, proFund,loan,olherLoan) "
			+ "values(#{empName}, #{bsaic}, #{homeRent}, #{medical}, #{tifin}, #{transport}, #{education}, #{extra}, #{others}, #{proFund}, #{loan}, #{olherLoan})")
	public void insert(Salary salary);
	
	
	
	@Update("UPDATE salarys SET insName=#{insName}, location=#{location} WHERE insId=#{insId}")
	public void update(Salary salary);
	
	
	@Delete("DELETE FROM salarys WHERE salId=#{id}")
	public void delete(Integer id);
	
	
	
	@Select("select * from salarys WHERE insId=#{id}")
	 public Salary getById(Integer id);
}
