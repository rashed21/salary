/**
 * 
 */
package com.salary.spring.entity;

import java.io.Serializable;

/**
 * @author Emrul
 *
 */
public class User implements Serializable {

	private static final long serialVersionUID = -314390964537577827L;
	
	private String userName;
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private String date;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

}
