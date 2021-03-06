package com.lti.banking.dao;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lti.banking.model.Account;
import com.lti.banking.model.User;
@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public User checkUser(User theUser) {
		
		User usr=null;
		Session session=null;
		try {
			session = sessionFactory.getCurrentSession();
			CriteriaBuilder cb=session.getCriteriaBuilder();
			 CriteriaQuery<User> cq=cb.createQuery(User.class);
			 Root<User> root=cq.from(User.class);
			//cq.select(root.get("id"));
				cq.select(root).where(cb.and(
						cb.equal(root.get("user_id"), theUser.getUser_id()),
						cb.equal(root.get("log_pass"),theUser.getLog_pass())
					));
				
				Query query = session.createQuery(cq);
				query.setMaxResults(1);
				usr=(User) query.getSingleResult();
				
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					if (session != null) {
						//session.close();
					}
				}
				
				return usr;
			}

	
	
	
	@Autowired
	SessionFactory sessionFactory1;
	public Account checkAccount(Account acno) {
		Account usr=null;
		Session session=null;
		try {
			session = sessionFactory1.getCurrentSession();
			CriteriaBuilder cb=session.getCriteriaBuilder();
			 CriteriaQuery<Account> cq=cb.createQuery(Account.class);
			 Root<Account> root=cq.from(Account.class);
			//cq.select(root.get("id"));
				cq.select(root).where(
						cb.equal(root.get("dept"),acno.getDept()));
			}

		catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				//session.close();
			}
		}
		return usr;
		
	}

	
	}