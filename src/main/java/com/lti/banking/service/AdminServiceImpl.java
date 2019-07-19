package com.lti.banking.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.banking.dao.AdminDAO;
import com.lti.banking.model.Admin;



@Service
public class AdminServiceImpl implements AdminService {
    
	@Autowired
	private AdminDAO adminDAO;
	
	@Transactional
	public Admin checkUser(Admin theUser) {
		return adminDAO.checkUser(theUser);
	}

}