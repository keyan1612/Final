package com.lti.banking.dao;

import java.util.List;

import com.lti.banking.model.Customer;

public interface CustomerDAO {
	public void saveCustomer(Customer theCustomer);
public List<Customer> getCustomers();
public void deleteCustomer(int theId);
public Customer getCustomer(int theId);
}
