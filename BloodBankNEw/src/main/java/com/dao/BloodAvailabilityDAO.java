package com.dao;

import java.util.List;

import com.model.BloodDonationEntity;

public interface BloodAvailabilityDAO {
public List<BloodDonationEntity> searchAvailability(BloodDonationEntity blood_search);
}
