package com.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.BloodDonationEntity;

@Repository("bloodAvailabilityDAO")
public class BloodAvailabiltyDAOImpl implements BloodAvailabilityDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public List<BloodDonationEntity> searchAvailability(BloodDonationEntity blood_search) {
		String state=blood_search.getState();
		String area= blood_search.getArea();
		String pincode=blood_search.getPincode();
		String blood_group=blood_search.getBlood_group();
		String hql="FROM BloodDonationEntity E WHERE E.state= :state and E.area= :area and E.pincode=:pincode and E.blood_group=:blood_group";
		Query query= sessionFactory.getCurrentSession().createQuery(hql, BloodDonationEntity.class);
		query.setParameter("blood_group", blood_group);
		query.setParameter("state", state);
		query.setParameter("area", area);
		query.setParameter("pincode", pincode);
		List<BloodDonationEntity> list_availability=query.getResultList();
		return list_availability;
	}
	

}
