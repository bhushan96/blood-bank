package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.FeedbackDAO;
import com.model.FeedbackEntity;

@Service("feedbackService")
public class FeedbackServiceImpl implements FeedbackService{

	
	@Autowired
	FeedbackDAO feedbackDAO;
	
	@Override
	public boolean saveFeedback(FeedbackEntity feedback) {
		boolean flag;
		flag=feedbackDAO.saveFeedback(feedback);
		return flag;
	}

}
