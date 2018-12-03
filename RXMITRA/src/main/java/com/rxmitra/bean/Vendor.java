package com.rxmitra.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "vendor_details", schema = "rxmitra2")
public class Vendor {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="VENDOR_ID")
	private Integer vendorId;
	@Column(name="VENDOR_TYPE")
	private String vendorType;
	@Column(name="VENDOR_NAME")
	private String vendorName;	
	@Column(name="ADDRESS")
	private String address;
	@Column(name="PIN_CODE")
	private String pinCode;
	@Column(name="DISTRICT")
	private String district;
	@Column(name="STATE")
	private String state;
	@Column(name="TIN_NO")
	private String tinNo;
	@Column(name="PAN_NO")
	private String panNo;
	@Column(name="LICENSE_NO")
	private String licenseNo;
	@Column(name="CST_NO")
	private String cstNo;
	@Column(name="PHONE_NO1")
	private String phoneNo1;
	@Column(name="PHONE_NO2")
	private String phoneNo2;
	@Column(name="EMAIL")
	private String email;
	@Column(name="BANK_NAME")
	private String bankName;
	@Column(name="ACCOUNT_NO")
	private String accountNo;
	@Column(name="IFSC_CODE")
    private String ifscCode;
	@Column(name="SHOP_ID")
	private String shopId;
	@Column(name="USER_ID")
	private String userId;
	
	public Integer getVendorId() {
		return vendorId;
	}
	public void setVendorId(Integer vendorId) {
		this.vendorId = vendorId;
	}
	public String getVendorType() {
		return vendorType;
	}
	public void setVendorType(String vendorType) {
		this.vendorType = vendorType;
	}
	public String getVendorName() {
		return vendorName;
	}
	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getPinCode() {
		return pinCode;
	}
	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getTinNo() {
		return tinNo;
	}
	public void setTinNo(String tinNo) {
		this.tinNo = tinNo;
	}
	public String getPanNo() {
		return panNo;
	}
	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}
	public String getLicenseNo() {
		return licenseNo;
	}
	public void setLicenseNo(String licenseNo) {
		this.licenseNo = licenseNo;
	}
	public String getCstNo() {
		return cstNo;
	}
	public void setCstNo(String cstNo) {
		this.cstNo = cstNo;
	}
	public String getPhoneNo1() {
		return phoneNo1;
	}
	public void setPhoneNo1(String phoneNo1) {
		this.phoneNo1 = phoneNo1;
	}
	public String getPhoneNo2() {
		return phoneNo2;
	}
	public void setPhoneNo2(String phoneNo2) {
		this.phoneNo2 = phoneNo2;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getIfscCode() {
		return ifscCode;
	}
	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}
	public String getShopId() {
		return shopId;
	}
	public void setShopId(String shopId) {
		this.shopId = shopId;
	}
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "Vendor [vendorId=" + vendorId + ", vendorType=" + vendorType + ", vendorName=" + vendorName
				+ ", address=" + address + ", pinCode=" + pinCode + ", district=" + district + ", state=" + state
				+ ", tinNo=" + tinNo + ", panNo=" + panNo + ", licenseNo=" + licenseNo + ", cstNo=" + cstNo
				+ ", phoneNo1=" + phoneNo1 + ", phoneNo2=" + phoneNo2 + ", email=" + email + ", bankName=" + bankName
				+ ", accountNo=" + accountNo + ", ifscCode=" + ifscCode + ", shopId=" + shopId + ", userId=" + userId
				+ "]";
	}
	

}
