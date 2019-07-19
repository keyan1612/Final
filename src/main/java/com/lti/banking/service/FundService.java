package com.lti.banking.service;

import java.util.List;

import com.lti.banking.model.Fund;

public interface FundService {
	public void Customers(Fund  theFund);

	public List<Fund> getFunds();
	
	public Fund getFund(int theId);

}
