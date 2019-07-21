package com.lti.banking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lti.banking.model.Account;
import com.lti.banking.model.User;
import com.lti.banking.service.UserService;

@Controller
@RequestMapping("/user")
public class LoginController {

	
@Autowired
private UserService userService;

@Autowired
private UserService accountService;
@GetMapping("/loginForm")
public String showFormForAdd(ModelMap theModel) {
	User theUser = new User();
	theModel.addAttribute("user", theUser);
	return "login-customer";
}
@RequestMapping(value = "/loginUser",  method = {RequestMethod.POST, RequestMethod.GET})
public ModelAndView processLogin(@ModelAttribute("user") User theUser) {
	User usr = userService.checkUser(theUser);
	ModelAndView model = null;  
	if (usr == null) {
		model = new ModelAndView("login-customer");
		model.addObject("error", "Invalid Username or Password");
	} else {
	String acno=theUser.getAcc_no();
		Account ac=accountService.checkAccount(acno);
		model = new ModelAndView("welcome");
		model.addObject("usr", usr);
		model.addObject("ac",ac);
		
		//model.addObject("usr", usr.getEmail());
	}
	return model;
}
}
