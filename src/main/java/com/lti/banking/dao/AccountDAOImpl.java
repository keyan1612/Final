package com.lti.banking.dao;
import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lti.banking.model.Account;
@Repository
public class AccountDAOImpl implements AccountDAO {
 
	@Autowired
	private SessionFactory sessionFactory;
	public void saveCustomers(Account theAccount) {
	Session currentSession= sessionFactory.getCurrentSession();
			currentSession.saveOrUpdate(theAccount);
		}
	
	public Account getAccount(int theId) {
		Session currentSession=sessionFactory.getCurrentSession();
		Account theAccount=currentSession.get(Account.class, theId);
		return theAccount;
	}

	public List<Account> getAccounts() {
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<Account> cq=cb.createQuery(Account.class);
		Root<Account> root=cq.from(Account.class);
		cq.select(root);
		Query query=session.createQuery(cq);
		return query.getResultList();
	}

	}


