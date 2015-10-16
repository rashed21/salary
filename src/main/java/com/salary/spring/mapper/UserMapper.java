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
	
	@Insert("inser into user(username, firstname, lastName) values(#{userName}, #{firstName}, #{lastName})")
	public void insert(User user);

}
