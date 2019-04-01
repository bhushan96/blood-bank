package com.dao;

import com.model.UserDetailsEntity;

public interface UserDetailsDao {
  UserDetailsEntity findUserByUsername(String username);
}
