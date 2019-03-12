package com.rxmitra.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.Employee;
import com.rxmitra.dao.EmployeeDAO;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeDAO empdao;
	
	public String registerEmployee(Employee emp) {
		String registerEmp= empdao.registerEmployee(emp);
		return registerEmp;
	}

	/*public boolean checkEmail(String emailid) {
		boolean b = false;
		if (empdao.checkEmail(emailid).equals("New User")) {
			b = false;
		} else {
			b = true;
		}
		return b;
	
    }*/
	public String checkEmail(String emailid) {
		//boolean b = false;
		
		String email = empdao.checkEmail(emailid);
		
		return email;
	
}
	
	/*public boolean checkMobile(String mobileNo) {
		boolean b = false;
		if (empdao.checkMobile(mobileNo).equals("New User")) {
			b = false;
		} else {
			b = true;
		}
		return b;
	
}
	*/
	public String checkMobile(String mobileNo) {
		String mobile = empdao.checkMobile(mobileNo);
		
		
		return mobile;
	
}
	
	/*public String verifyEmail(String email) {
		String verify = empdao.verifyEmail(email);
		return verify;
	}*/
	
	public Employee viewEmployeeInEditPage(String email,String empName, String mobileNo,String emailId) {
		 Employee employee = empdao.viewEmployeeInEditPage(email,empName,mobileNo,emailId);
		return employee;
	}

	public String editEmployeeDetails(Employee employee) {
	       String update = empdao.editEmployeeDetails(employee);

			return update;
		}
}
