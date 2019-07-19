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

import com.lti.banking.model.Fund;
@Repository
public class FundDAOImpl implements FundDAO {
 
	@Autowired
	private SessionFactory sessionFactory;
	public void Customers(Fund theFund) {
	Session currentSession= sessionFactory.getCurrentSession();
			currentSession.saveOrUpdate(theFund);
		}
	
	public Fund getFund(int theId) {
		Session currentSession=sessionFactory.getCurrentSession();
		Fund theFund=currentSession.get(Fund.class, theId);
		return theFund;
	}

	public List<Fund> getFunds() {
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<Fund> cq=cb.createQuery(Fund.class);
		Root<Fund> root=cq.from(Fund.class);
		cq.select(root);
		Query query=session.createQuery(cq);
		return query.getResultList();
	}

	}


