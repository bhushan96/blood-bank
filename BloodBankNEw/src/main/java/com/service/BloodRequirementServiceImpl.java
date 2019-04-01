package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.BloodRequirementDAO;
import com.model.BloodRequirementEntity;

@Service("bloodrequirementservice")
public class BloodRequirementServiceImpl implements BloodRequirementService {

	@Autowired
	BloodRequirementDAO bloodrequirementdao;
	
	@Override
	@Transactional
	public boolean addBloodRequirement(BloodRequirementEntity bloodRequirementEntity) {
		return  bloodrequirementdao.addBloodRequirement(bloodRequirementEntity);
		
	}
	
	
	
	
	
}
