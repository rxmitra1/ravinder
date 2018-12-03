package com.rxmitra.bean;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "vendor_product_table", schema = "rxmitra2")
public class VendorProduct {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "VENDOR_PRODUCT_ID")
	private Integer vendorProductId;
	@Column(name = "COMPANY_NAME")
	private String companyName;
	@Column(name = "SPECIAL_NAME")
	private String specialName;
	@Column(name = "TYPE")
	private String type;
	@Column(name = "WEIGHT")
	private String weight;
	@Column(name = "ITEM_MASS")
	private String itemMass;
	@Column(name = "SKUID")
	private String skuid;
	@Column(name = "CATEGORY")
	private String category;
	@Column(name = "PHOTO")
	private byte[] photo;
	
	@Column(name = "VENDOR_ID")
	private String vendorId;
	
	public Integer getVendorProductId() {
		return vendorProductId;
	}
	public void setVendorProductId(Integer vendorProductId) {
		this.vendorProductId = vendorProductId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getSpecialName() {
		return specialName;
	}
	public void setSpecialName(String specialName) {
		this.specialName = specialName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getItemMass() {
		return itemMass;
	}
	public void setItemMass(String itemMass) {
		this.itemMass = itemMass;
	}
	public String getSkuid() {
		return skuid;
	}
	public void setSkuid(String skuid) {
		this.skuid = skuid;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	
	public String getVendorId() {
		return vendorId;
	}
	public void setVendorId(String vendorId) {
		this.vendorId = vendorId;
	}
	@Override
	public String toString() {
		return "VendorProduct [vendorProductId=" + vendorProductId + ", companyName=" + companyName + ", specialName="
				+ specialName + ", type=" + type + ", weight=" + weight + ", itemMass=" + itemMass + ", skuid=" + skuid
				+ ", category=" + category + ", photo=" + Arrays.toString(photo) + ", vendorId=" + vendorId + "]";
	}
	
	

	
}
