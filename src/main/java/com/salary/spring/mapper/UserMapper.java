/**
 * 
 */
package com.salary.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.salary.spring.entity.User;

/**
 * @author Emrul
 *
 */
public interface UserMapper {
	
	@Select("select * from user")
	public List<User> selectAll();
	
	@Insert("insert into user(username, firstName, lastName, email, password) "
			+ "values(#{userName}, #{firstName}, #{lastName},#{email},#{password})")
	public void insert(User user);

}
