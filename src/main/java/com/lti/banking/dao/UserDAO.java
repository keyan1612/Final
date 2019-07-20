package com.lti.banking.dao;

import com.lti.banking.model.Account;
import com.lti.banking.model.User;

public interface UserDAO {
	public User checkUser(User theUser);
	public Account checkAccount(Account theAccount);

}
