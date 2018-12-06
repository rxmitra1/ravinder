package com.rxmitra.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.Employee;
import com.rxmitra.bean.UserRegistration;
import com.rxmitra.service.EmployeeService;
import com.rxmitra.service.UserRegistrationService;
import com.rxmitra.utils.SQLDate;

@Controller
@RequestMapping("/")
public class EmployeeController {

	@Autowired
	private EmployeeService empService;

	@Autowired
	private UserRegistrationService regService;

	@RequestMapping(path = "/employeeRegister", method = RequestMethod.POST)
	public ModelAndView insertUserRegistration(Employee employee, Model model, HttpSession session) {
		ModelAndView mav = null;
		String userId = (String) session.getAttribute("referenceId");
		String message = "";

		String email = empService.checkEmail(employee.getEmailId());
		String mobile = empService.checkMobile(employee.getMobileNo());

		if (email.equals("New User")) {
			// message = "Email Already Exists. Please enter the another mailid.";
			mav = new ModelAndView("AddEmployee");
			if (mobile.equals("New User")) {

				employee.setStatus("A");
				//employee.setVerified("NO");
				employee.setUserId(userId);
				employee.setPassword(employee.getMobileNo());
				employee.setEmpDate(new SQLDate().getSysDateandTime());
				// businessowner.getBusinessOwnerObject().registerBO(bo);
				String string = empService.registerEmployee(employee);

				if (string.equals("Fail")) {
					message = "Employee Registration Not Completed.....";
					mav = new ModelAndView("AddEmployee");
				} else {
					message = "Employee Details Registration Success.....";
					mav = new ModelAndView("AddEmployee", "employeeDetails", employee);
				}

			} else {
				if (email.equals("Existing Employee Mobile")) {
					message = "Mobile AlreadyExists in Employee . Please enter the another Email.";
					mav = new ModelAndView("AddEmployee", "employeeDetails", employee);
				} else {
					message = "Mobile Already Exists in User. Please enter the another Email.";
					mav = new ModelAndView("AddEmployee", "employeeDetails", employee);
				}
			}

		} else {

			if (email.equals("Existing Employee")) {
				message = "Email Already Exists in Employee. Please enter the another Email.";
				mav = new ModelAndView("AddEmployee", "employeeDetails", employee);
			} else {
				message = "Email Already Exists in User. Please enter the another Email .";
				mav = new ModelAndView("AddEmployee", "employeeDetails", employee);
			}
		}

		
		model.addAttribute("regSuccess", message);
		return mav;
	}

	/*
	 * // Email Verification
	 * 
	 * @RequestMapping(path = "/verifyEmpEmail", method = RequestMethod.GET) public
	 * ModelAndView verifyEmail(String email) { ModelAndView mav = null; String
	 * verifyEmail = null; verifyEmail = empService.verifyEmail(email); if
	 * (verifyEmail.equals("Verified")) { mav = new ModelAndView("login",
	 * "emailverifiedsuccess", "Your Email is Verified...Please Login"); } else {
	 * mav = new ModelAndView("AddEmployee", "emailverifiederror",
	 * "Your Email is Not Verified...please Verify."); } return mav;
	 * 
	 * }
	 */

	@RequestMapping(path = "/viewEmployeeInEditPage", method = RequestMethod.POST)
	public ModelAndView viewEmployeeInEditPage(String empId, String empName,String pincode) {
		ModelAndView mav = null;
		//int empId1 = Integer.parseInt(empId);
		Employee employee = empService.viewEmployeeInEditPage(empId, empName, pincode);
		if (employee != null) {
			mav = new ModelAndView("EditEmployeeDetails","employeeDetails",employee);
		} else {
			mav = new ModelAndView("AddEmployee", "emailverifiederror", "Your Email is Not Verified...please Verify.");
		}
		return mav;

	}
	
	
	@RequestMapping(path = "/editEmployeeDetails", method = RequestMethod.POST)
	public ModelAndView editEmployeeDetails(Employee employee,Model model) {
		ModelAndView mav = null;
		//int empId1 = Integer.parseInt(empId);
		 String update = empService.editEmployeeDetails(employee);
		if (update!= null) {
			model.addAttribute("updateSuccess", "Updated Successfully");
			mav = new ModelAndView("EditEmployeeDetails","employeeDetails",employee);
		} else {
			mav = new ModelAndView("AddEmployee","updateSuccess", "Not Updated Successfully");
		}
		return mav;

	}

}
