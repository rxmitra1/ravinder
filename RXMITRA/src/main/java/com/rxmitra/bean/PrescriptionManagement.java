package com.rxmitra.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="prescription_mngmt_table",schema="rxmitra2")
public class PrescriptionManagement {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PRESCRIPTION_MNGMT_ID")
	private Integer prescriptionMngmtId;
	@Column(name="REQUEST_ID")
	private String requestId;
	@Column(name="PRESCRIPTION_MADE_BY")
	private String prescriptionMadeBy;
	@Column(name="STATE")
	private String status;
	@Column(name="DOCTOR_NAME")
	private String doctorName;
	@Column(name="REFERRED_BY")
	private String referredBy;
	@Column(name="ADDRESS")
	private String address;
	
	public Integer getPrescriptionMngmtId() {
		return prescriptionMngmtId;
	}
	public void setPrescriptionMngmtId(Integer prescriptionMngmtId) {
		this.prescriptionMngmtId = prescriptionMngmtId;
	}
	public String getRequestId() {
		return requestId;
	}
	public void setRequestId(String requestId) {
		this.requestId = requestId;
	}
	public String getPrescriptionMadeBy() {
		return prescriptionMadeBy;
	}
	public void setPrescriptionMadeBy(String prescriptionMadeBy) {
		this.prescriptionMadeBy = prescriptionMadeBy;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getReferredBy() {
		return referredBy;
	}
	public void setReferredBy(String referredBy) {
		this.referredBy = referredBy;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "PrescriptionManagement [prescriptionMngmtId=" + prescriptionMngmtId + ", requestId=" + requestId
				+ ", prescriptionMadeBy=" + prescriptionMadeBy + ", status=" + status + ", doctorName=" + doctorName
				+ ", referredBy=" + referredBy + ", address=" + address + "]";
	}
	
	
	
	

}
