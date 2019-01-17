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
	@Column(name="REQUEST_ID")
	private String requestId;
	@Column(name="MEDICINE_NAME")
	private String medicineName;
	@Column(name="QUANTITY")
	private String quantity;
	@Column(name="MRP")
	private String mrp;
	@Column(name="DISCOUNT_PRICE")
	private String discountPrice;
	@Column(name="FINAL_PRICE")
	private String finalPrice;
	@Column(name="ORDER_ID")
	private String orderId;
	
	
	public Integer getPrescriptionId() {
		return prescriptionId;
	}
	public void setPrescriptionId(Integer prescriptionId) {
		this.prescriptionId = prescriptionId;
	}
	
	public String getRequestId() {
		return requestId;
	}
	public void setRequestId(String requestId) {
		this.requestId = requestId;
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
	
	public String getMrp() {
		return mrp;
	}
	public void setMrp(String mrp) {
		this.mrp = mrp;
	}
	public String getDiscountPrice() {
		return discountPrice;
	}
	public void setDiscountPrice(String discountPrice) {
		this.discountPrice = discountPrice;
	}
	public String getFinalPrice() {
		return finalPrice;
	}
	public void setFinalPrice(String finalPrice) {
		this.finalPrice = finalPrice;
	}
	
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	@Override
	public String toString() {
		return "Prescription [prescriptionId=" + prescriptionId + ", medicineName=" + medicineName + ", quantity=" + quantity + ", mrp=" + mrp + ", discountPrice="
				+ discountPrice + ", finalPrice=" + finalPrice + "]";
	}
	
	
	
	

}
