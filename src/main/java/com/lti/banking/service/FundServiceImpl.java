package com.lti.banking.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.banking.dao.FundDAO;
import com.lti.banking.model.Fund;
@Service
public class FundServiceImpl implements FundService {
	@Autowired
	private FundDAO FundDAO;
   
	@Transactional
     public void Customers(Fund theFund) {
	 FundDAO.Customers(theFund);
		

	}
   @Transactional
	public List<Fund> getFunds() {
	return FundDAO.getFunds();
	}
   
   @Transactional
public Fund getFund(int theId) {
	return FundDAO.getFund(theId);
}

	
}

	


