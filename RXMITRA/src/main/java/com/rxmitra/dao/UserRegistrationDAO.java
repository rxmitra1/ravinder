package com.rxmitra.dao;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rxmitra.bean.UserLogin;
import com.rxmitra.bean.UserRegistration;
import com.rxmitra.utils.EncryptDecrypt;
import com.rxmitra.utils.Mailer;

@Repository
@Transactional
@PropertySource(value = "classpath:localResources.properties")
public class UserRegistrationDAO {
	@Autowired
	private HibernateTemplate template;

	@Autowired
	private Environment env;

	public String registerUser(UserRegistration reg) {
		// TODO Auto-generated method stub
		Mailer mail = new Mailer();
		System.out.println(reg);
		
		if(reg.getUserType().equals("SELLER")) {
			int i = (Integer) template.save(reg);
			if (i > 0) {
				mail.send(reg.getEmailId(), "Thanks for Registering with RX Mitra As a Seller",
						"Thanks for Registering with RX Mitra As a Seller. <br> Please verify your email id <a href='"
								+ env.getProperty("rxmitra.localhost") + "?email=" +reg.getEmailId() + "'>Here</a>");
				return "Success";
			} else {
				return "Fail";
			}	
		}else {
			reg.setBusinessName("UNAVAILABLE");
			reg.setGstNo("UNAVAILABLE");
			int i = (Integer) template.save(reg);
			if (i > 0) {
				mail.send(reg.getEmailId(), "Thanks for Registering with RX Mitra As a Customer",
						"Thanks for Registering with RX Mitra As a Customer. <br> Please verify your email id <a href='"
								+ env.getProperty("rxmitra.localhost") + "?email=" +reg.getEmailId() + "'>Here</a>");
				return "Success";
			} else {
				return "Fail";
			}	
		}
		
		
		
		
		
	}

	public String checkEmail(String emailid) {
		// TODO Auto-generated method stub
		String sql = "from com.rxmitra.bean.UserRegistration r where r.emailId='" + emailid + "'";
		String message = null;
		Query query = template.getSessionFactory().openSession().createQuery(sql);
		List list = query.list();

		if (list.size() <= 0) {
			message = "New User";
		} else {
			message = "Existing User";
		}
		return message;
	}

	public String checkMobile(String mobile) {

		String sql = "from com.rxmitra.bean.UserRegistration b where b.mobileNo='" + mobile + "'";
		String message = null;
		Query query = template.getSessionFactory().openSession().createQuery(sql);
		List list = query.list();

		if (list.size() <= 0) {
			message = "New User";
		} else {
			message = "Existing User";
		}
		return message;
	}

	public String verifyEmail(String email) {

		String message = "";
		String verify = "YES";
		
		String sql = "update com.rxmitra.bean.UserRegistration r set r.verified=? , r.status=? where r.emailId=?";
		String sql1 = "from com.rxmitra.bean.UserRegistration r where r.emailId=?";
		Query createQuery = template.getSessionFactory().openSession().createQuery(sql);
		Query createQuery1 = template.getSessionFactory().openSession().createQuery(sql1);
		createQuery.setString(0, verify);
		createQuery.setString(1, "A");
		createQuery.setString(2, email);
		
		createQuery1.setString(0, email);
		
        UserRegistration userRegistration = (UserRegistration) createQuery1.uniqueResult();
        UserLogin userLogin = new UserLogin();
        userLogin.setMobileNo(userRegistration.getMobileNo());
        userLogin.setUsername(userRegistration.getEmailId());
        userLogin.setPassword(userRegistration.getPassword());
        userLogin.setStatus("A");
        userLogin.setUserType(userRegistration.getBusinessType());
        userLogin.setReferenceId(userRegistration.getRegistrationId().toString());
        int i=0,j=0;
		 i = createQuery.executeUpdate();
		 j = (Integer) template.save(userLogin);
		
		if (i > 0 && j>0) {
			message = "Verified";
		} else {
			message = " Not Verified";

		}

		return message;
	}

	public UserRegistration getRegistration(UserLogin userLogin) {
		UserRegistration reg = null;
		String sql = "from com.rxmitra.bean.UserRegistration r where r.emailId='" + userLogin.getUsername()
				+ "' or r.mobileNo='" + userLogin.getUsername() + "'";
		String message = null;
		Query query = template.getSessionFactory().openSession().createQuery(sql);
		List list = query.list();
		if (list.size() > 0) {
			reg = (UserRegistration) list.get(0);
		} else {

		}

		return reg;
	}

	// Get the profile of perticular user
	public UserRegistration viewUserProfile(Integer userId) {
		String sql = "from com.rxmitra.bean.UserRegistration r where r.registrationId='" + userId + "'";
		Query createQuery = template.getSessionFactory().openSession().createQuery(sql);
		List<UserRegistration> list = createQuery.list();
		UserRegistration userRegistration = list.get(0);
		return userRegistration;

	}

	// Update the Profile perticular user
	public String updateUserProfile(UserRegistration reg) {

		template.update(reg);

		return "updated";

	}

	// Update the password perticular user
	public Integer changePassword(String password,Integer userId) {
		String sql = "update from com.rxmitra.bean.UserRegistration r set r.password='"+password+"' where r.registrationId='" + userId + "'";
		Query createQuery = template.getSessionFactory().openSession().createQuery(sql);
		int i = createQuery.executeUpdate();

		return i;

	}
	
	
}
