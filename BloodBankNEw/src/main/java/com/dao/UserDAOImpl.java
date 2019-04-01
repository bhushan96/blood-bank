package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.UserDetailsEntity;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	  
	@Override
	@Transactional
	public boolean registerUser(UserDetailsEntity user) {
		
		boolean success = false;   
		  try {
			  sessionFactory.getCurrentSession().save(user);
		    success = true;

		  } catch (Exception e) {
		  }
		 return success ;
		
	}

}
