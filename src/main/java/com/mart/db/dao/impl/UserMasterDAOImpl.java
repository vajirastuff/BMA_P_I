package com.mart.db.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.mart.db.dao.UserMasterDAO;
import com.mart.db.model.UserMaster;

@Repository
public class UserMasterDAOImpl extends GenericDAOImpl<UserMaster> implements UserMasterDAO{
	
	private static final Logger logger = LoggerFactory.getLogger(UserMasterDAOImpl.class);

	

}
