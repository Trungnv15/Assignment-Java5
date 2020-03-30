package com.poly.spring5mvc.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.spring5mvc.dao.LoginDAO;

@Service
public class LoginService {

	@Autowired
	private LoginDAO LoginDAO;
	
	@Transactional
	public int checkLogin(String Username, String Password)
	{
		return LoginDAO.checkLogin(Username, Password);
	}
}
