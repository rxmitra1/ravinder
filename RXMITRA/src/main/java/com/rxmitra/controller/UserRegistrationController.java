package com.rxmitra.controller;

import java.io.IOException;
import java.security.GeneralSecurityException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.UserLogin;
import com.rxmitra.bean.UserRegistration;
import com.rxmitra.service.UserRegistrationService;
import com.rxmitra.utils.EncryptDecrypt;
import com.rxmitra.utils.SQLDate;

@Controller
@RequestMapping("/")
public class UserRegistrationController {

	@Autowired
	private UserRegistrationService regService;

	@RequestMapping(path = "/register", method = RequestMethod.GET)
	public ModelAndView index(UserRegistration userRegistration, Model model) {
		ModelAndView modelAndView = new ModelAndView("register");
		modelAndView.addObject("vendorDetails", userRegistration);
		return modelAndView;
	}

	@RequestMapping(path = "/userRegister", method = RequestMethod.POST)
	public ModelAndView insertUserRegistration(UserRegistration userRegistration, Model model) {
		ModelAndView mav = null;
		String message = "";
		if (regService.checkEmail(userRegistration.getEmailId())) {
			message = "Email Already Exists.<br>Verification mail has been sent to your emailid. Please verify from the link given.";
			mav = new ModelAndView("register");
		} else {
			if (regService.checkMobile(userRegistration.getMobileNo())) {
				message = "Mobile Already Registered.<br>OTP has been sent to your Mobile No. Please <a href='#'> Verify your Mobile </a>.";
			} else {
				userRegistration.setStatus("-1");
				userRegistration.setVerified("NO");
				userRegistration.setRegistrationDate(new SQLDate().getSysDateandTime());
				// businessowner.getBusinessOwnerObject().registerBO(bo);
				String string = regService.registerUser(userRegistration);

				if (string.equals("")) {
					message="Registration Not Completed.....";
					mav = new ModelAndView("register");
				} else {
					message="Registration Successfully completed.....Please Verify Yor Email.";
					mav = new ModelAndView("register", "vendorDetails", userRegistration);
				}
			}
		}
        model.addAttribute("message", message);
		return mav;
	}

	// Email Verification
	@RequestMapping(path = "/verifyEmail", method = RequestMethod.GET)
	public ModelAndView verifyEmail(String email) {
		ModelAndView mav = null;
		String verifyEmail = null;
		verifyEmail = regService.verifyEmail(email);
		if (verifyEmail.equals("Verified")) {
			mav = new ModelAndView("login", "emailverifiedsuccess", "Your Email is Verified...Please Login");
		} else {
			mav = new ModelAndView("register", "emailverifiederror", "Your Email is Not Verified...please Verify.");
		}
		return mav;

	}

	@RequestMapping(path = "/viewUserProfile", method = RequestMethod.GET)
	public ModelAndView viewUserProfile(String update, HttpSession session) {
		ModelAndView mav = null;

		Integer userId = Integer.parseInt((String) session.getAttribute("referenceId"));
		UserRegistration userRegistration = regService.viewUserProfile(userId);
		if (update.equals("yes")) {
			String date = userRegistration.getRegistrationDate();
			userRegistration.setRegistrationDate(new SQLDate().getMMMDate(date));
			mav = new ModelAndView("UpdateUserProfile", "userRegistration", userRegistration);
		} else {
			userRegistration.setRegistrationDate(new SQLDate().getSQLDate(userRegistration.getRegistrationDate()));
			mav = new ModelAndView("ViewUserProfile", "userRegistration", userRegistration);
		}
		return mav;

	}

	@RequestMapping(path = "/updateUserProfile", method = RequestMethod.POST)
	public ModelAndView updateUserProfile(UserRegistration reg, HttpSession session) {
		ModelAndView mav = null;
		// Integer userId = Integer.parseInt((String)
		// session.getAttribute("referenceId"));
		String userProfile = regService.updateUserProfile(reg);
		if (userProfile.equals("updated")) {
			mav = new ModelAndView("UpdateUserProfile", "updateSuccess", "Updated Successfully......");
		} else {
			// mav = new ModelAndView("ViewUserProfile", "userRegistration",
			// userRegistration);
		}
		return mav;

	}

	@RequestMapping(path = "/changePassword", method = RequestMethod.POST)
	public ModelAndView changePassWord(String oldpswd, String newpswd, String conformpswd,
			HttpSession session) {
		ModelAndView mav = null;
		String password = "";
		Integer userId = Integer.parseInt((String) session.getAttribute("referenceId"));
		UserRegistration userRegistration = regService.viewUserProfile(userId);
		if (!userRegistration.getPassword().equals(oldpswd)) {

			mav = new ModelAndView("ChangePassword", "oldPasswordWrong",
					"Old Password is Wrong...Please Enter Correct Password..");
		} else if (!newpswd.equals(conformpswd)) {

			mav = new ModelAndView("ChangePassword", "samePasswordWrong",
					"Password and Confirm Password Must be Same..");
		} else {
			password = newpswd;
			Integer i = regService.changePassword(password, userId);
			if (i > 0) {
				mav = new ModelAndView("ChangePassword", "changedPassword", "Password Changes Successfully......");
			} else {
				// mav = new ModelAndView("ViewUserProfile", "userRegistration",
				// userRegistration);
			}
		}

		return mav;

	}
}
