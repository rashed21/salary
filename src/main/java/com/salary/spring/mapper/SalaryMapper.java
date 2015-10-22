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
	
	
	@Select("select * from salarys ORDER BY insIdfk")
	public List<Salary> selectAll();
	
	@Select("select insIdfk, sum(bsaic) as bsaic,  sum(homeRent) as homeRent, sum(medical) as medical, sum(tifin) as tifin, sum(transport) as transport, sum(education) as education, sum(extra) as extra, sum(others) as others, sum(proFund) as proFund, sum(loan) as loan, sum(olherLoan) as olherLoan from salarys GROUP BY insIdfk ORDER BY insIdfk ")
	public List<Salary> selectAllGroubBy();
	
	@Insert("insert into salarys(insIdfk,empName, bsaic, homeRent, medical, tifin,transport, education, extra, others, proFund,loan,olherLoan) "
			+ "values(#{insIdfk}, #{empName}, #{bsaic}, #{homeRent}, #{medical}, #{tifin}, #{transport}, #{education}, #{extra}, #{others}, #{proFund}, #{loan}, #{olherLoan})")
	public void insert(Salary salary);
	
	
	
	@Update("UPDATE salarys SET insName=#{insName}, location=#{location} WHERE insId=#{insId}")
	public void update(Salary salary);
	
	
	@Delete("DELETE FROM salarys WHERE salId=#{id}")
	public void delete(Integer id);
	
	
	
	@Select("select * from salarys WHERE insId=#{id}")
	 public Salary getById(Integer id);
}
