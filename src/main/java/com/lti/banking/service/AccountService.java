package com.lti.banking.service;

import java.util.List;

import com.lti.banking.model.Account;

public interface AccountService {
	public void saveCustomers(Account  theAccount);

	public List<Account> getAccounts();
	
	

}
