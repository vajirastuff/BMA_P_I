package com.mart.db.dao;

import java.util.List;

import com.mart.db.model.UserPassword;

public interface UserPasswordDAO {

	public List<UserPassword> findAll();
}
