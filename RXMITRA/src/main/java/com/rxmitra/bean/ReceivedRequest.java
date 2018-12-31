package com.rxmitra.bean;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="received_request_table",schema="rxmitra2")
public class ReceivedRequest {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="REQUEST_ID")
	private Integer requestId;
	@Column(name="DISTRICT")
	private String district;
	@Column(name="CITY")
	private String city;
	@Column(name="LANDMARK")
	private String landMark;
	@Column(name="FLATNO")
	private String flatNo;
	@Column(name="STATE")
	private String state;
	@Column(name="PINCODE")
	private String pincode;
	@Column(name="NAME")
	private String name;
	@Column(name="EMAIL")
	private String emailId;
	@Column(name="MOBILE")
	private String mobile;
	@Column(name="DATE")
	private String date;
	@Column(name="PHOTO")
	private byte[] photo;
	
	@Transient
    private String encodedImage;
	
	@Column(name="STATUS")
	private String status;
	
	public Integer getRequestId() {
		return requestId;
	}
	public void setRequestId(Integer requestId) {
		this.requestId = requestId;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getLandMark() {
		return landMark;
	}
	public void setLandMark(String landMark) {
		this.landMark = landMark;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	
	public String getFlatNo() {
		return flatNo;
	}
	public void setFlatNo(String flatNo) {
		this.flatNo = flatNo;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	public String getEncodedImage() {
		return encodedImage;
	}
	public void setEncodedImage(String encodedImage) {
		this.encodedImage = encodedImage;
	}
	@Override
	public String toString() {
		return "ReceivedRequest [requestId=" + requestId + ", district=" + district + ", city=" + city + ", landMark="
				+ landMark + ", flatNo=" + flatNo + ", state=" + state + ", pincode=" + pincode + ", name=" + name
				+ ", mobile=" + mobile + ", date=" + date + ", photo=" + Arrays.toString(photo) + ", status=" + status
				+ "]";
	}
	
	
	

}
