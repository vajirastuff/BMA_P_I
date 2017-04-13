package com.mart.service;

import java.util.List;

import com.mart.db.model.UserAddress;
import com.mart.db.model.UserMaster;
import com.mart.db.model.UserPassword;

public interface UserService {

	public List<UserMaster> findAllUserMaster();
	public List<UserPassword> findAllUserPassword();
	public List<UserAddress> findAllUserAddress();

}
