package com.rxmitra.dao;

import java.util.HashMap;
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
import com.rxmitra.bean.UserRegistration;
import com.rxmitra.utils.Mailer;

@Repository
@Transactional
@PropertySource(value = "classpath:localResources.properties")
public class UserLoginDAO {

	@Autowired
	private HibernateTemplate template;

	@Autowired
	private Environment env;

	public HashMap<String, String> loginUser1(UserLogin userLogin) {
		
		HashMap<String, String> hashMap = new HashMap<String, String>();

		String sql = "from com.rxmitra.bean.UserLogin l where l.username='" + userLogin.getUsername() +"'or l.mobileNo='" + userLogin.getUsername() + "'";
		Query query = template.getSessionFactory().openSession().createQuery(sql);
		UserLogin login = (UserLogin) query.uniqueResult();

		String sql1 = "from com.rxmitra.bean.UserRegistration r where r.emailId='" + userLogin.getUsername()
				+ "'or r.mobileNo='" + userLogin.getUsername() + "'";
		Query query1 = template.getSessionFactory().openSession().createQuery(sql1);
		UserRegistration reg = (UserRegistration) query1.uniqueResult();

		String sql2 = "from com.rxmitra.bean.Employee e where e.emailId='" + userLogin.getUsername()
				+ "'or e.mobileNo='" + userLogin.getUsername() + "'";
		Query query2 = template.getSessionFactory().openSession().createQuery(sql2);
		Employee employee = (Employee) query2.uniqueResult();

		if (login == null) {
			if(reg==null) {
				hashMap.put("referenceId", "NR");// NR-Not Registered.
			}else {
				hashMap.put("referenceId", "NV");// NV-Not Verified
			}
			
		} else {
			if (login.getUserType().equals("EMPLOYEE")) {

				if (employee.getPassword().equals(userLogin.getPassword())) {
					hashMap.put("referenceId", employee.getEmpId().toString());
					hashMap.put("userType", "EMPLOYEE");
					hashMap.put("userName", employee.getEmpName());

				} else {
					hashMap.put("referenceId", "PM");// PM-Password Mismatch
				}

			} else {
				if (!reg.getVerified().equals("YES")) {
					hashMap.put("referenceId", "NV");// NV-Not Verified
				} else {

					if (reg.getPassword().equals(userLogin.getPassword())) {
						hashMap.put("referenceId", reg.getRegistrationId().toString());
						hashMap.put("userType", reg.getBusinessType());
						hashMap.put("userName", reg.getFirstName());

					} else {
						hashMap.put("referenceId", "PM");// PM-Password Mismatch
					}

				}
			}

		}
		return hashMap;
	}

	@SuppressWarnings("static-access")
	public String verifyMailLogin(String email) {
		// TODO Auto-generated method stub

		Mailer mail = new Mailer();

		mail.send(email, "Email Verification",
				"Thanks for Registering with RX Mitra. <br> Please verify your email id <a href='"
						+ env.getProperty("rxmitra.localhost") + "?email=" + email + "'>Here</a>");
		return "verified";
	}

	@SuppressWarnings({ "unchecked", "static-access" })
	public String getUserEmail(String username) {
		// TODO Auto-generated method stub
		String existEmail = null, message = "no", existMobileNo = null;
		Mailer mail = new Mailer();

		String query = "from com.rxmitra.bean.UserRegistration r where r.emailId='" + username + "' or r.mobileNo='"
				+ username + "'";
		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		List<UserRegistration> list = createQuery.list();
		for (UserRegistration userRegistration : list) {
			existEmail = userRegistration.getEmailId();
			existMobileNo = userRegistration.getMobileNo();

			if (username.equals(existEmail)) {
				message = "yes";
				String textMsg = "Please cilck the link for <a href='"
						+ env.getProperty("rxmitra.localhost.forgotpassword") + "?email=" + existEmail
						+ "'> Reset Password </a>";
				mail.send(existEmail, "Reset password", textMsg);
			} else if (username.equals(existMobileNo)) {
				message = "yes";
				String textMsg = "Please cilck the link for <a href='"
						+ env.getProperty("rxmitra.localhost.forgotpassword") + "?email=" + existEmail
						+ "'> Reset Password </a>";
				mail.send(existEmail, "Reset password", textMsg);
			}
		}

		return message;
	}

	public String resetPassword(String email, String password) {
		String message = null;

		String query = "update com.rxmitra.bean.UserLogin r set r.password=:password,r.status=:status where r.username=:username";
		String query1 = "update com.rxmitra.bean.UserRegistration r set r.password=:password,r.status=:status where r.emailId=:username";
		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		Query createQuery1 = template.getSessionFactory().openSession().createQuery(query1);

		createQuery.setParameter("password", password);
		createQuery.setParameter("status", "A");
		createQuery.setParameter("username", email);
		createQuery1.setParameter("password", password);
		createQuery1.setParameter("status", "A");
		createQuery1.setParameter("username", email);
		int i = createQuery.executeUpdate();

		if (i > 0) {

			int j = createQuery1.executeUpdate();
			if (j > 0) {
				message = "success";
			}
		} else {
			message = "failure";
		}

		return message;
	}

	public UserRegistration getUserNameByUserId(String refId) {
		// int i=Integer.parseInt(refId);
		String sql = "from com.rxmitra.bean.UserRegistration r where r.registrationId=" + refId + "";
		Query createQuery = template.getSessionFactory().openSession().createQuery(sql);

		UserRegistration userRegistration = (UserRegistration) createQuery.uniqueResult();
		System.out.println(userRegistration);
		return userRegistration;
	}
}
