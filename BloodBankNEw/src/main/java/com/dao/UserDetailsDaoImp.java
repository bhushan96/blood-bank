package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.UserDetailsEntity;

@Repository
public class UserDetailsDaoImp implements UserDetailsDao {

  @Autowired
  private SessionFactory sessionFactory;

  @Override
  public UserDetailsEntity findUserByUsername(String username) {
    return sessionFactory.getCurrentSession().get(UserDetailsEntity.class, username);
  }


}
