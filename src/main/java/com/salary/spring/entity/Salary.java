/**
 * 
 */
package com.salary.spring.entity;

import java.io.Serializable;

/**
 * @author Emrul
 *
 */
public class Salary implements Serializable{
	private int salId;
	
	private int insIdfk;
	
	private String empName;
	
	private double bsaic;
	
	private double homeRent;
	
	private double medical;
	
	private double tifin;
	
	private double transport;
	
	private double education;
	
	private double extra;
	
	private double others;
	
	private double proFund;
	
	private double loan;
	
	private double olherLoan;

	public int getSalId() {
		return salId;
	}

	public void setSalId(int salId) {
		this.salId = salId;
	}

	public int getInsIdfk() {
		return insIdfk;
	}

	public void setInsIdfk(int insIdfk) {
		this.insIdfk = insIdfk;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public double getBsaic() {
		return bsaic;
	}

	public void setBsaic(double bsaic) {
		this.bsaic = bsaic;
	}

	public double getHomeRent() {
		return homeRent;
	}

	public void setHomeRent(double homeRent) {
		this.homeRent = homeRent;
	}

	public double getMedical() {
		return medical;
	}

	public void setMedical(double medical) {
		this.medical = medical;
	}

	public double getTifin() {
		return tifin;
	}

	public void setTifin(double tifin) {
		this.tifin = tifin;
	}

	public double getTransport() {
		return transport;
	}

	public void setTransport(double transport) {
		this.transport = transport;
	}

	public double getEducation() {
		return education;
	}

	public void setEducation(double education) {
		this.education = education;
	}

	public double getExtra() {
		return extra;
	}

	public void setExtra(double extra) {
		this.extra = extra;
	}

	public double getOthers() {
		return others;
	}

	public void setOthers(double others) {
		this.others = others;
	}

	public double getProFund() {
		return proFund;
	}

	public void setProFund(double proFund) {
		this.proFund = proFund;
	}

	public double getLoan() {
		return loan;
	}

	public void setLoan(double loan) {
		this.loan = loan;
	}

	public double getOlherLoan() {
		return olherLoan;
	}

	public void setOlherLoan(double olherLoan) {
		this.olherLoan = olherLoan;
	}



}
