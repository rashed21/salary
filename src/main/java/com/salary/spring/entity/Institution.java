package com.salary.spring.entity;

import java.io.Serializable;


/**
 * @author Emrul
 *
 */
public class Institution implements Serializable {

	 private int insId;
	 private int userId;
	 private String insName;
	 private String location;
	 
	 
	public int getInsId() {
		return insId;
	}
	public void setInsId(int insId) {
		this.insId = insId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getInsName() {
		return insName;
	}
	public void setInsName(String insName) {
		this.insName = insName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	 
	 
}
