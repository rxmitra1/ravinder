package com.rxmitra.bean;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="login_table",schema="rxmitra2")
public class UserLogin {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="LOGIN_ID")
	private Integer loginId;
	
	@Column(name="USERNAME")
	private String username;
	
	@Column(name="PASSWORD")
	private String password;
	
	@Column(name="USERTYPE")
	private String userType;
	
	@Column(name="STATUS")
	private String status;
	
	@Column(name="USER_ID")
	private String referenceId;
	

	public Integer getLoginId() {
		return loginId;
	}

	public void setLoginId(Integer loginId) {
		this.loginId = loginId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getReferenceId() {
		return referenceId;
	}

	public void setReferenceId(String referenceId) {
		this.referenceId = referenceId;
	}

	@Override
	public String toString() {
		return "UserLogin [loginId=" + loginId + ", username=" + username + ", password=" + password + ", userType="
				+ userType + ", status=" + status + ", referenceId=" + referenceId + "]";
	}

	


}
