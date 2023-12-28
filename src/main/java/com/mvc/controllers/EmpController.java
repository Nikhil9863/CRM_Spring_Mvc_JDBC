package com.mvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.beans.CustomerReg;
import com.mvc.dao.CustomerRegDao;


@Controller
public class EmpController {

	@Autowired
	CustomerRegDao dao;

	@RequestMapping("/")    
	public String showform(Model m){    
		//m.addAttribute("command", new CustomerReg());  
		return "CustomerForm";   
	}    
	@RequestMapping(value="/save",method = RequestMethod.POST)    
	public String save(@ModelAttribute("customer") CustomerReg customer){    
		dao.save(customer);    
		return "success"; 
	}    

}
