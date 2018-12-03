package com.rxmitra.service;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.UserLogin;
import com.rxmitra.dao.UserLoginDAO;

@Service
public class UserLoginService {

	
	@Autowired
	private  UserLoginDAO logindao;

	
	// Mahesh Sir
	public HashMap<String, String> loginUser1(UserLogin userLogin) {
	HashMap<String, String> loginUser1 = logindao.loginUser1(userLogin);

		return loginUser1;
	}
	
	
	//employee top right

	
	
	public String verifyMailLogin(String email) {
		String verified = logindao.verifyMailLogin(email);
		return verified;
	}
	
	public String getUserEmail(String email) {
		
		String userEmail = logindao.getUserEmail(email);
		return userEmail;
	}
	
	public String resetPassword(String email, String password) {
		
		String resetPassword = logindao.resetPassword(email, password);
		return resetPassword;
	}
}
