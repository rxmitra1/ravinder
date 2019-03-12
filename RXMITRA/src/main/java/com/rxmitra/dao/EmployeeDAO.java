package com.rxmitra.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rxmitra.bean.Employee;
import com.rxmitra.bean.UserLogin;

@Repository
@Transactional
@PropertySource(value = "classpath:localResources.properties")
public class EmployeeDAO {

	@Autowired
	private HibernateTemplate template;

	@Autowired
	private Environment env;

	public String registerEmployee(Employee emp) {
		// TODO Auto-generated method stub
		// Mailer mail = new Mailer();
		System.out.println(emp);
		int i = (Integer) template.save(emp);
		if (i > 0) {
			String userType = "EMPLOYEE";
			UserLogin login = new UserLogin();
			login.setPassword(emp.getMobileNo());
			login.setReferenceId(emp.getEmpId().toString());
			login.setStatus("A");
			login.setUsername(emp.getEmailId());
			login.setUserType(userType);

			template.save(login);

			return "Success";
		} else {
			return "Fail";
		}
	}

	public String checkEmail(String emailid) {
		// TODO Auto-generated method stub
		String sql = "from com.rxmitra.bean.Employee e where e.emailId='" + emailid + "'";
		String sql1 = "from com.rxmitra.bean.UserRegistration r where r.emailId='" + emailid + "'";

		String message = null;
		Query query = template.getSessionFactory().openSession().createQuery(sql);
		Query query1 = template.getSessionFactory().openSession().createQuery(sql1);

		List list = query.list();
		List list1 = query1.list();

		if (list.size() <= 0) {
			message = "New User";
			if (list1.size() <= 0) {
				message = "New User";
			} else {
				message = "Existing User";
			}

		} else {
			message = "Existing Employee";
		}
		return message;
	}

	public String checkMobile(String mobileNo) {
		// TODO Auto-generated method stub
		String sql = "from com.rxmitra.bean.Employee e where e.mobileNo='" + mobileNo + "'";
		String sql1 = "from com.rxmitra.bean.UserRegistration e where e.mobileNo='" + mobileNo + "'";

		String message = null;
		Query query = template.getSessionFactory().openSession().createQuery(sql);
		Query query1 = template.getSessionFactory().openSession().createQuery(sql1);

		List list = query.list();
		List list1 = query1.list();

		if (list.size() <= 0) {
			message = "New User";
			if (list1.size() <= 0) {
				message = "New User";
			} else {
				message = "Existing User";
			}

		} else {
			message = "Existing Employee";
		}
		return message;
	}

	

	public Employee viewEmployeeInEditPage(String empId, String empName, String mobileNo, String emailId) {

		String sql = "from com.rxmitra.bean.Employee e where e.empId=? or e.empName=? or e.mobileNo=? or e.emailId=?";
		Query createQuery = template.getSessionFactory().openSession().createQuery(sql);
		createQuery.setString(0, empId);
		createQuery.setString(1, empName);
		createQuery.setParameter(2, mobileNo);
		createQuery.setParameter(3, emailId);

		Employee employee = (Employee) createQuery.uniqueResult();

		return employee;
	}
	
	

	public String editEmployeeDetails(Employee employee) {
		template.update(employee);

		return "update";
	}
}
