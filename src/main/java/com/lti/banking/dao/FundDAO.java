package com.lti.banking.dao;

import java.util.List;

import com.lti.banking.model.Fund;

public interface FundDAO {
	public void Customers(Fund theFund);
public List<Fund> getFunds();
public Fund getFund(int theId);
}
