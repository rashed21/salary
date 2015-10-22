/**
 * 
 */
package com.salary.spring.businesslogic;

import java.io.Serializable;

import com.salary.spring.entity.Salary;

/**
 * @author Emrul
 *
 */
public class Calculation implements Serializable {

	
	
	public Salary calculation(Salary sal){
		Salary salary=new Salary();
		salary.setBsaic(sal.getBsaic());
		salary.setHomeRent(houseRent(sal.getBsaic()));
		salary.setMedical(medical());		
		salary.setTifin(tiffin());
		salary.setTransport(transport());
		salary.setExtra(allowance(sal.getBsaic()));
		salary.setEducation(sal.getEducation());
		salary.setEmpName(sal.getEmpName());
		salary.setOthers(sal.getOthers());
		salary.setProFund(sal.getProFund());
		salary.setOlherLoan(sal.getOlherLoan());
		salary.setLoan(sal.getLoan());
		salary.setInsIdfk(sal.getInsIdfk());
	
		return salary;
		
	}
	
	//=FLOOR(IF(T7="GM",U7,IF(C7<4545,0,IF(C7<=5000,C7*65%,IF(C7<=5500,3300,IF(C7<=10800,C7*60%,IF(C7<=11818,6500,IF(C7<=21600,C7*55%))))))),1)
	public double houseRent(Double basic){
		double rentAmount=0.00;
		if(basic<=4545){
			rentAmount=0.00;
		}else if (basic<=5000){
			rentAmount=basic*65/100;
		}else if (basic<=5500){
			rentAmount=3300.00;
		}else if (basic<=10800){
			rentAmount=basic*60/100;
		}else if (basic<=11818){
			rentAmount=6500.00;
		}else if (basic<=21600){
			rentAmount=basic*55/100;
		}else{
			 rentAmount=0.00;
		}
		return rentAmount;
	}
	
	
	public double medical(){
		double medical=700.00;
		return medical;
		
	}
	
	public double transport(){
		double transport=150.00;
		return transport;
		
	}
	
	public double tiffin(){
		double tiffin=150.00;
		return tiffin;
		
	}
	

	
	//FLOOR(IF(C12<4500,0,IF(C12*20%<1500,1500,C12*20%)),1)
	
	public double allowance(Double basic){
		double allowanceAmount=0.00;
		if(basic<=4545){
			allowanceAmount=0.00;
		}else if (basic*20/100<1500){
			allowanceAmount=1500.00;
		}else
		{
			allowanceAmount=basic*20/100;
		}
		return allowanceAmount;
	}
	
	
	
}
