package com.rxmitra.rest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.rxmitra.bean.UserRegistration;
import com.rxmitra.service.UserRegistrationService;

@RestController
public class RestRegistration {
	

	@Autowired
	private UserRegistrationService regService;
	
	//@RequestMapping(path = "/userRegister1", method = RequestMethod.POST)
	/*  
	@PostMapping(path = "/userRegister1")
	public ModelAndView insertUserRegistration(UserRegistration userRegistration, Model model) {
		ModelAndView mav = null;
		String message = "";
		if (regService.checkEmail(userRegistration.getEmailId())) {
			message = "Email Already Exists.<br>Verification mail has been sent to your emailid. Please verify from the link given.";
			mav = new ModelAndView("Register");
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
	}*/
	
	//@RequestMapping(path = "/getRegister", method = RequestMethod.GET)
	@GetMapping(path = "/getRegister")
	public @ResponseBody UserRegistration getUserRegistration( Model model,HttpSession session) {
		//String message = "";
	String s=(String) session.getAttribute("referenceId");
	System.out.println(s+"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA@");
		UserRegistration userRegistration= regService.viewUserProfile(2);
        //model.addAttribute("message", message);
		return userRegistration;
	}


}
