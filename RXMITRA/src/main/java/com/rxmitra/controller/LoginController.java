package com.rxmitra.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.UserLogin;
import com.rxmitra.bean.UserRegistration;
import com.rxmitra.bean.Vendor;
import com.rxmitra.dao.UserLoginDAO;
import com.rxmitra.service.UserLoginService;
import com.rxmitra.service.UserRegistrationService;

@Controller
@RequestMapping("/")
@PropertySource(value = "classpath:localResources.properties")
public class LoginController {

	@Autowired
	private UserLoginService loginService;

	@Autowired
	private UserRegistrationService regService;

	@Autowired
	private Environment env;

	@RequestMapping(path = "/login", method = RequestMethod.GET)
	public ModelAndView index(UserLogin userLogin, Model model) {
		ModelAndView modelAndView = new ModelAndView("login");
		modelAndView.addObject("vendorDetails", userLogin);
		return modelAndView;
	}

	@RequestMapping(path = "/userLogin", method = RequestMethod.POST)
	public ModelAndView insertUserRegistration(UserLogin userLogin, Model model, HttpSession session) {

		System.out.println(userLogin);
		ModelAndView mav = null;

		// String user = loginService.loginUser(userLogin);
		HashMap<String, String> hashMap = new HashMap<String, String>();
		hashMap = loginService.loginUser1(userLogin);
		System.out.println(hashMap.get("userType"));
		if (hashMap.get("userType")=="EMPLOYEE") {

			if (hashMap.get("referenceId").equals("PM")) {
				mav = new ModelAndView("login", "message2", "Invalid Password ....");
			} else if (hashMap.get("referenceId").equals("NR")) {
				mav = new ModelAndView("login", "message2", "User Not Registerd ....please Register ");
			} else {
				session.setAttribute("referenceId", hashMap.get("referenceId"));
				session.setAttribute("userType", hashMap.get("userType"));
				session.setAttribute("userName", hashMap.get("userName"));

				// session.setMaxInactiveInterval(60);
				mav = new ModelAndView("Employeehome1", "message1", "Login Successfully completed....");
			}

		} else if(hashMap.get("userType")=="RETAILER" || hashMap.get("userType").equals("RETAILER")){
			
			System.out.println(hashMap.get("userType")+"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
			if (hashMap.get("referenceId").equals("PM")) {
				mav = new ModelAndView("login", "message2", "Invalid Password ....");
			} else if (hashMap.get("referenceId").equals("NV")) {
				mav = new ModelAndView("login", "message2", "User Not yet Verified....Please Verify Your Email!");
			} else if (hashMap.get("referenceId").equals("NR")) {
				mav = new ModelAndView("login", "message2", "User Not Registerd ....please Register ");
			} else {
				session.setAttribute("referenceId", hashMap.get("referenceId"));
				session.setAttribute("userType", hashMap.get("userType"));
				session.setAttribute("userName", hashMap.get("userName"));

				// session.setMaxInactiveInterval(60);
				mav = new ModelAndView("Employeehome", "message1", "Login Successfully completed....");
			}
		}else {
			
			System.out.println(hashMap.get("userType")+"ABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBAAAAAAAAAAA");

			if (hashMap.get("referenceId").equals("PM")) {
				mav = new ModelAndView("login", "message2", "Invalid Password ....");
			} else if (hashMap.get("referenceId").equals("NV")) {
				mav = new ModelAndView("login", "message2", "User Not yet Verified....Please Verify Your Email!");
			} else if (hashMap.get("referenceId").equals("NR")) {
				mav = new ModelAndView("login", "message2", "User Not Registerd ....please Register ");
			} else {
				session.setAttribute("referenceId", hashMap.get("referenceId"));
				session.setAttribute("userType", hashMap.get("userType"));
				session.setAttribute("userName", hashMap.get("userName"));

				// session.setMaxInactiveInterval(60);
				mav = new ModelAndView("Employeehome2", "message1", "Login Successfully completed....");
			}
		}

		/*
		 * if (user.equals("success")) { UserRegistration registration =
		 * regService.getRegistration(userLogin); model.addAttribute("userRegistration",
		 * registration); mav = new ModelAndView("Employeehome", "message1",
		 * "Login Successfully completed...."); } else { if (user.equals("fail")) { mav
		 * = new ModelAndView("LoginPage", "message2",
		 * "Invalid Username and Password ...."); } else { mav = new
		 * ModelAndView("LoginPage", "verifyerror",
		 * "Your Email is Not Verified ....Please Verify <a href='" +
		 * env.getProperty("rxmitra.localhost.login") + "?email=" +
		 * userLogin.getUsername() + "'>Here</a>");
		 * 
		 * }
		 * 
		 * }
		 */
		return mav;

	}

	@RequestMapping(path = "/loginEmailVerify", method = RequestMethod.GET)
	public ModelAndView emailVerify(String email, Model model) {
		ModelAndView mav = null;
		String verified = loginService.verifyMailLogin(email);
		if (verified.equals("verified")) {
			mav = new ModelAndView("login", "loginEmailVerified",
					"Verification message sent to ur email. Please Verify..");
		}

		return mav;
	}

	@RequestMapping(path = "/forgotPassword", method = RequestMethod.POST)
	public ModelAndView forgotPassword(String username, Model model, HttpSession session) {
		ModelAndView mav = null;
		String message = null;
		String userEmail = loginService.getUserEmail(username);

		if (userEmail.endsWith("no")) {
			message = "Your Email Id not at registered with Us! Please Register...";
			mav = new ModelAndView("forgotPassword", "message", message);
		} else {
			message = "Check your Email for Reset Password!";
			mav = new ModelAndView("forgotPassword", "message1", message);
		}

		return mav;
	}

	@RequestMapping(path = "/resetPassword", method = RequestMethod.POST)
	public ModelAndView resetPassword(String password, Model model, HttpSession session, HttpServletRequest request) {
		ModelAndView mav = null;
		String message = null;
		String page = null;
		String email = request.getParameter("email");
		String resetPassword = loginService.resetPassword(email, password);

		if (resetPassword.equals("success")) {
			message = "Your Password Updated successfully!Login Here!";
			page = "login";
			mav = new ModelAndView("login", "resetSuccess", message);
		} else {
			message = "Your Password not Updated! Try again!";
			mav = new ModelAndView("resetPassword", "resetFailure", message);
		}

		return mav;
	}

	@RequestMapping(path = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(String email, Model model, HttpSession session) {
		ModelAndView mav = null;
		session.invalidate();
		mav = new ModelAndView("login");

		return mav;
	}

}
