package com.rxmitra.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin_brands",schema="rxmitra2")
public class AdminBrands {
	
	
	@Id
	@GeneratedValue
	@Column(name="ADMIN_BRAND_ID")
	private Integer adminBrandId;
	@Column(name="BRAND_NAME")
	private String brandName;
	@Column(name="CATEGORY")
	private String category;
	@Column(name="SUB_CATEGORY")
	private String subCategory;
	
	public Integer getAdminBrandId() {
		return adminBrandId;
	}
	public void setAdminBrandId(Integer adminBrandId) {
		this.adminBrandId = adminBrandId;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSubCategory() {
		return subCategory;
	}
	public void setSubCategory(String subCategory) {
		this.subCategory = subCategory;
	}
	@Override
	public String toString() {
		return "AdminBrands [adminBrandId=" + adminBrandId + ", brandName=" + brandName + ", category=" + category
				+ ", subCategory=" + subCategory + "]";
	}
	

	
}
