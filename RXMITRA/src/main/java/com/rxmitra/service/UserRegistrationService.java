package com.rxmitra.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.UserLogin;
import com.rxmitra.bean.UserRegistration;
import com.rxmitra.dao.UserRegistrationDAO;

@Service
public class UserRegistrationService {

	@Autowired
	private UserRegistrationDAO regdao;

	public String registerUser(UserRegistration reg) {
		String registerUser = regdao.registerUser(reg);
		return registerUser;
	}

	public boolean checkEmail(String emailid) {
		boolean b = false;
		if (regdao.checkEmail(emailid).equals("New User")) {
			b = false;
		} else {
			b = true;
		}
		return b;
	}

	public boolean checkMobile(String mobile) {
		boolean b = false;
		if (regdao.checkMobile(mobile).equals("New User")) {
			b = false;
		} else {
			b = true;
		}
		return b;
	}

	public String verifyEmail(String email) {
		String verify = regdao.verifyEmail(email);
		return verify;
	}

	public UserRegistration getRegistration(UserLogin userLogin) {
		UserRegistration reg = regdao.getRegistration(userLogin);
		return reg;
	}

	public UserRegistration viewUserProfile(Integer userId) {
		UserRegistration reg = regdao.viewUserProfile(userId);
		return reg;
	}

	public String updateUserProfile(UserRegistration reg) {
		String userProfile = regdao.updateUserProfile(reg);
		return userProfile;
	}

	public Integer changePassword(String password, Integer userId) {
		Integer i = regdao.changePassword(password, userId);
		return i;
	}
}
