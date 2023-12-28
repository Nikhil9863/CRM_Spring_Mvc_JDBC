package com.mvc.dao;
import org.springframework.jdbc.core.JdbcTemplate;

import com.mvc.beans.CustomerReg;


public class CustomerRegDao 
{
	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}   
	
	public int save(CustomerReg c)
	{    
	    String query= "INSERT INTO customer_reg ( Customer_Name ,Cust_Email , Cust_pno) VALUES ( ? , ? , ?)";
	    				
	    return template.update(query , c.getCust_Name() , c.getCust_E_mail() , c.getCust_phno());    
	}    
}
