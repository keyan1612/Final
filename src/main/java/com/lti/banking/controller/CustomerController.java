package com.lti.banking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lti.banking.model.Customer;
import com.lti.banking.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/showForm")
	public String showFormForAdd(ModelMap theModel) {
		Customer theCustomer=new Customer();
		theModel.addAttribute("customer", theCustomer);
		return "customer-form";
	}
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {
		customerService.saveCustomer(theCustomer);
		return "redirect:/customer/list";
	} 
	@GetMapping("/list")
	public String listCustomers(ModelMap theModel) {
		List<Customer> theCustomers=customerService.getCustomers();
		theModel.addAttribute("customers",theCustomers);
		return "list-customers";
	}
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("CustomerId") int theId) {
		customerService.deleteCustomer(theId);
		return "redirect:/customer/list";
	}

	
}
