package com.crud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.view.RedirectView;

import com.crud.dao.EmployeeDAO;
import com.crud.models.Employee;


import java.util.*;

import javax.servlet.http.HttpServletRequest;


@Controller
public class MainController {

	@Autowired
	private EmployeeDAO productDAO;
	
	
	//with this url we can access addProduct page
	@RequestMapping("/add")
	public String Product() {
		
		return "addProduct";

	}
	
	//with this url we can see all records stores in product table 
	@RequestMapping("/view")
	public String viewProducts(Model model) {
		List<Employee> employees=this.productDAO.getAll();
		model.addAttribute("employees", employees);
		return "viewAll";

	}
	

	@RequestMapping(path = "/addEmployee" ,method = RequestMethod.POST )
	public RedirectView addProduct(@ModelAttribute Employee employee) {
		RedirectView redirectView=new RedirectView();
		System.out.println(employee);
	int row=	this.productDAO.addEmployee(employee);
	System.out.println(row);
		redirectView.setUrl("add");
		return redirectView;
	}
	
	@RequestMapping(path="/delete/{eId}")
	public RedirectView deleteRecord(@PathVariable("eId") int eId,HttpServletRequest request) {
		RedirectView redirectView=new RedirectView();
		System.out.println(eId);
	     productDAO.deleteEmployee(eId);
	     redirectView.setUrl(request.getContextPath()+"/view");
		return redirectView;
	}
	
	
	@RequestMapping(path="/update/{eId}")
	public String updateRecord(@PathVariable("eId") int eId,Model model) {
		System.out.println(eId);
		Employee employee=productDAO.getEmployee(eId);
	  model.addAttribute("employee", employee);
	     
		return "updateProduct";
	}
	
	
	
	
	@RequestMapping(path = "/updateEmployee" ,method = RequestMethod.POST )
	public RedirectView updateProduct(@ModelAttribute Employee employee,HttpServletRequest request) {
		RedirectView redirectView=new RedirectView();
		System.out.println(employee);
	this.productDAO.updateEmployee(employee);
	  
	redirectView.setUrl(request.getContextPath()+"/view");
		return redirectView;
	}
}
