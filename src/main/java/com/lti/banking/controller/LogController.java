package com.lti.banking.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lti.banking.model.Account;




@Controller
@RequestMapping("/account")
public class LogController {
	@GetMapping("/log")
	public String showFormForAdd(ModelMap theModel) {
		Account theAccount = new Account();
		theModel.addAttribute("account", theAccount);
		return "list-accounts";
	}
}
