package com.rxmitra.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="prescription_table",schema="rxmitra2")
public class Prescription {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PRESCRION_Id")
	private Integer prescriptionId;
	@Column(name="PRESCRION_MNGMT_ID")
	private Integer prescriptionMngmtId;
	@Column(name="MEDICINE_NAME")
	private String medicineName;
	@Column(name="QUANTITY")
	private String quantity;
	
	
	public Integer getPrescriptionId() {
		return prescriptionId;
	}
	public void setPrescriptionId(Integer prescriptionId) {
		this.prescriptionId = prescriptionId;
	}
	public Integer getPrescriptionMngmtId() {
		return prescriptionMngmtId;
	}
	public void setPrescriptionMngmtId(Integer prescriptionMngmtId) {
		this.prescriptionMngmtId = prescriptionMngmtId;
	}
	public String getMedicineName() {
		return medicineName;
	}
	public void setMedicineName(String medicineName) {
		this.medicineName = medicineName;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "Prescription [prescriptionId=" + prescriptionId + ", prescriptionMngmtId=" + prescriptionMngmtId
				+ ", medicineName=" + medicineName + ", quantity=" + quantity + "]";
	}
	
	
	

}
