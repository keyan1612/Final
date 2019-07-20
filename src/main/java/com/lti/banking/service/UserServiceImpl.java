package com.lti.banking.service;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.banking.model.Account;
import com.lti.banking.model.User;
import com.lti.banking.dao.*;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO UserDAO;
	
	@Transactional
	public User checkUser(User theUser) {

		return UserDAO.checkUser(theUser);
	}

	public Account checkAccount(int acno) {
		
		return UserDAO. checkAccount(acno);
	}

}
