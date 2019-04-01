package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.BloodRequirementEntity;

@Repository("bloodrequirementdao")
public class BloodRequirementDAOImpl implements BloodRequirementDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public boolean addBloodRequirement(BloodRequirementEntity bloodRequirementEntity) {
		Session currentSession = sessionFactory.getCurrentSession();
		try
		{
			currentSession.saveOrUpdate(bloodRequirementEntity);
		}catch (Exception e) {
			return false;
		}
		
		return true;
	}

}
