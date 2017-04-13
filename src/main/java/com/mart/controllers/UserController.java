package com.mart.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mart.db.model.UserAddress;
import com.mart.db.model.UserMaster;
import com.mart.db.model.UserPassword;
import com.mart.service.UserService;
import com.mart.uri.UserURIConstants;

@Controller
public class UserController {
	
	@Autowired
	@Qualifier("userServiceMaster")
	private UserService userServiceMaster;
	
	@Autowired
	@Qualifier("userServicePassword")
	private UserService userServicePassword;
	
	@Autowired
	@Qualifier("userAddressService")
	private UserService userAddressService;
	
	@RequestMapping(value=UserURIConstants.GET_ALL_USER, method=RequestMethod.GET)
	public @ResponseBody List<UserMaster> findAllUserMaster(){
		List<UserMaster> list = userServiceMaster.findAllUserMaster();
		return list;
	}
	
	@RequestMapping(value=UserURIConstants.GET_ALL_USER_PASSWORD, method=RequestMethod.GET)
	public @ResponseBody List<UserPassword> findAllUserPassword(){
		List<UserPassword> list = userServicePassword.findAllUserPassword();
		return list;
	}
	
	@RequestMapping(value=UserURIConstants.GET_ALL_USER_ADDRESS, method=RequestMethod.GET)
	public @ResponseBody List<UserAddress> findAllUserAddress(){
		List<UserAddress> list = userAddressService.findAllUserAddress();
		return list;
	}


	public UserService getUserServiceMaster() {
		return userServiceMaster;
	}

	public void setUserServiceMaster(UserService userServiceMaster) {
		this.userServiceMaster = userServiceMaster;
	}

	public UserService getUserServicePassword() {
		return userServicePassword;
	}

	public void setUserServicePassword(UserService userServicePassword) {
		this.userServicePassword = userServicePassword;
	}
	
	



	
}
