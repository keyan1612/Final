package com.lti.banking.dao;

import java.util.List;

import com.lti.banking.model.Account;

public interface AccountDAO {
	public void saveCustomers(Account theAccount);
public List<Account> getAccounts();
public Account getAccount(int theId);
}
