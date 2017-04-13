package com.mart.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mart.db.dao.UserAddressDAO;
import com.mart.db.dao.UserMasterDAO;
import com.mart.db.dao.UserPasswordDAO;
import com.mart.db.model.UserAddress;
import com.mart.db.model.UserMaster;
import com.mart.db.model.UserPassword;
import com.mart.service.UserService;

@Service
public class UserServiceImpl extends BaseService implements UserService {

	@Autowired
	private UserMasterDAO userMasterDAO;

	@Autowired
	private UserPasswordDAO userPasswordDAO;

	@Autowired
	private UserAddressDAO userAddressDAO;

	@Override
	@Transactional
	public List<UserMaster> findAllUserMaster() {
		return userMasterDAO.findAll();
	}

	@Override
	@Transactional
	public List<UserPassword> findAllUserPassword() {
		return userPasswordDAO.findAll();
	}

	@Override
	@Transactional
	public List<UserAddress> findAllUserAddress() {
		return userAddressDAO.findAll();
	}

	public UserMasterDAO getUserMasterDAO() {
		return userMasterDAO;
	}

	public void setUserMasterDAO(UserMasterDAO userMasterDAO) {
		this.userMasterDAO = userMasterDAO;
	}

	public UserPasswordDAO getUserPasswordDAO() {
		return userPasswordDAO;
	}

	public void setUserPasswordDAO(UserPasswordDAO userPasswordDAO) {
		this.userPasswordDAO = userPasswordDAO;
	}

	public UserAddressDAO getUserAddressDAO() {
		return userAddressDAO;
	}

	public void setUserAddressDAO(UserAddressDAO userAddressDAO) {
		this.userAddressDAO = userAddressDAO;
	}

}
