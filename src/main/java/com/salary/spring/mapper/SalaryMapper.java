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
//	@Select("select * from salarys ORDER BY insIdfk")

//	select * from salary.salarys join  salary.insInfo on salarys.insIdfk = insInfo.insId  where insInfo.userId=1 ORDER BY insIdfk
	
	
//	@Select("select * from salarys where  insIdfk =(select insId from insInfo WHERE userId=1) ORDER BY insIdfk")
	
	//@Select("select * from salarys join  insInfo on salarys.insIdfk = insInfo.insId  join  user on insInfo.insId=user.user_id   ORDER BY insIdfk")

	@Select("select * from salary.salarys join  salary.insInfo on salarys.insIdfk = insInfo.insId  where insInfo.userId=#{user} ORDER BY insIdfk")
	public List<Salary> selectAll(Integer user);
	
	@Select("select insIdfk, sum(bsaic) as bsaic,  sum(homeRent) as homeRent, sum(medical) as medical, sum(tifin) as tifin, sum(transport) as transport, sum(education) as education, sum(extra) as extra, sum(others) as others, sum(proFund) as proFund, sum(loan) as loan, sum(olherLoan) as olherLoan"
			+ " from salarys  join  salary.insInfo on salarys.insIdfk = insInfo.insId  where insInfo.userId=#{user} GROUP BY insIdfk ORDER BY insIdfk ")
	public List<Salary> selectAllGroubBy(Integer user);
	
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
