package com.lti.banking.service;

import com.lti.banking.model.Account;
import com.lti.banking.model.User;

public interface UserService {
	public User checkUser(User theUser);

	public Account checkAccount(int acno);

}
