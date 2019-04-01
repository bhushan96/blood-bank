package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.FeedbackEntity;

@Repository("feedbackDAO")
public class FeedbackDAOImpl implements FeedbackDAO {

	
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public boolean saveFeedback(FeedbackEntity feedback) {
		try{
		sessionFactory.getCurrentSession().save(feedback);
		}
		catch(Exception e){
			return false;
		}
		return true;
	}

}
