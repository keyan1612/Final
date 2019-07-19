package com.lti.banking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lti.banking.model.Account;
import com.lti.banking.service.AccountService;

@Controller
@RequestMapping("/account")
public class AccountController {
    
	@Autowired
	private AccountService accountService;
	
	@GetMapping("/showForms")
	public String showFormsForAdd(ModelMap theModel) {
		Account theAccount=new Account();
		theModel.addAttribute("account", theAccount);
		return "customer-account";
	}
	@PostMapping("/saveCustomers")
	public String saveCustomers(@ModelAttribute("account") Account theAccount) {
		accountService.saveCustomers(theAccount);
		return "redirect:/account/lists";
	} 
	@GetMapping("/lists")
	public String listAccounts(ModelMap theModel) {
		List<Account> theAccounts=accountService.getAccounts();
		theModel.addAttribute("accounts",theAccounts);
		return "list-accounts";
	}

	
}
