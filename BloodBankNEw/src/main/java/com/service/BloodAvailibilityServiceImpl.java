package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.BloodAvailabiltyDAOImpl;
import com.model.BloodDonationEntity;

@Service("bloodAvailabilityService")
public class BloodAvailibilityServiceImpl implements BloodAvailibilityService {

	@Autowired
	BloodAvailabiltyDAOImpl bloodAvailabilityDAO;
	
	@Transactional
	@Override
	public List<BloodDonationEntity> searchBloodAvailabilty(BloodDonationEntity blood_search) {
		List<BloodDonationEntity> list_availability=bloodAvailabilityDAO.searchAvailability(blood_search);
		return list_availability;
	}

}
