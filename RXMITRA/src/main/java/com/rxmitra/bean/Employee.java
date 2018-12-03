package com.rxmitra.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employee_details_table",schema="rxmitra2")
public class Employee {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="EMP_ID")
	private Integer empId;
	@Column(name="EMP_NAME")
	private String empName;
	@Column(name="EMP_SURNAME")
	private String empSurName;
	@Column(name="EMAILID")
	private String emailId;
	@Column(name="PASSWORD")
	private String password;
	@Column(name="MOBILE_NO")
	private String mobileNo;
	@Column(name="EDUCATION")
	private String education;
	@Column(name="CMPLTD_YEAR")
	private String completedYear;
	@Column(name="EMP_REG_DATE")
	private String empDate;
	@Column(name="STATUS")
	private String status;
	@Column(name="USER_ID")
	private String userId;
	
	
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String passwprd) {
		this.password = passwprd;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpSurName() {
		return empSurName;
	}
	public void setEmpSurName(String empSurName) {
		this.empSurName = empSurName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getCompletedYear() {
		return completedYear;
	}
	public void setCompletedYear(String completedYear) {
		this.completedYear = completedYear;
	}
	
	public String getEmpDate() {
		return empDate;
	}
	public void setEmpDate(String empDate) {
		this.empDate = empDate;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", empSurName=" + empSurName + ", emailId="
				+ emailId + ", passwprd=" + password + ", mobileNo=" + mobileNo + ", education=" + education
				+ ", completedYear=" + completedYear + ", empDate=" + empDate + ", status=" + status + ", userId=" + userId + "]";
	}

	
	
	
}
