package com.lti.banking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lti.banking.model.Fund;
import com.lti.banking.service.FundService;

@Controller
@RequestMapping("/fund")
public class FundController{
    
	@Autowired
	private FundService fundService;
	
	@GetMapping("/fundTransfer")
	public String showForAdd(@RequestParam("customerId") int theId,Model theModel) {
		Fund theFund=new Fund();
		theModel.addAttribute("cid", theId);
		theModel.addAttribute("fund", theFund);
		return "fund-transfer";
	}
	@PostMapping("/Customers")
	public String Customers(@ModelAttribute("fund") Fund theFund) {
		fundService.Customers(theFund);
		return "redirect:/fund/stat";
	} 
	@GetMapping("/stat")
	public String statFunds(ModelMap theModel) {
		List<Fund> theFunds=fundService.getFunds();
		theModel.addAttribute("funds",theFunds);
		return "list-transfer";
	}

	
}
