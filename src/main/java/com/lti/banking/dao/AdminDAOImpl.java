package com.lti.banking.dao;



import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lti.banking.model.Admin;


@Repository
public class AdminDAOImpl implements AdminDAO {
  
	@Autowired
	SessionFactory sessionFactory;
	private String email;
	private String pass;

	public Admin checkUser(Admin theUser) {
		// TODO Auto-generated method stub
		Admin usr=null;
		Session session=null;
	
		String email="zexabank@gmail.com";
		String pass="zexa123";
		if(email.equals(theUser.getEmail()) && pass.equals(theUser.getPassword()))
			{
			System.out.println("You have login successfully!");
		
			}
		else
		{
			System.out.println("Try again");
		}
		
	/*	try {
			 session = sessionFactory.getCurrentSession();
			 //CriteriaBuilder nad CriteriaQuery we use persistence
			 CriteriaBuilder cb = session.getCriteriaBuilder();
			CriteriaQuery<Admin> cq = cb.createQuery(Admin.class);
			Root<Admin> root = cq.from(Admin.class);
			
			//cq.select(root.get("id"));
			//In the below code .get() method will take the value entered by the user and do matching it with database
			cq.select(root).where(cb.and(
					cb.equal(root.get("email"), theUser.getEmail()),
					cb.equal(root.get("password"),theUser.getPassword())
				));
			
			Query query = session.createQuery(cq);
			query.setMaxResults(1);
			usr=(Admin) query.getSingleResult();
			
			} catch (Exception e) {
				e.printStackTrace();
			} 
			finally {
				if (session != null) {
					//session.close();
				}
			}*/
		return usr;
	

	}

}