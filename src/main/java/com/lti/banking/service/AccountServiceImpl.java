package com.lti.banking.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.banking.dao.AccountDAO;
import com.lti.banking.model.Account;
@Service
public class AccountServiceImpl implements AccountService {
	@Autowired
	private AccountDAO accountDAO;
   
	@Transactional
     public void saveCustomers(Account theAccount) {
		accountDAO.saveCustomers(theAccount);
		

	}
   @Transactional
	public List<Account> getAccounts() {
	return accountDAO.getAccounts();
	}
   
   @Transactional
public Account getAccount(int theId) {
	return accountDAO.getAccount(theId);
}



	

}
