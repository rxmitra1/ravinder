package com.rxmitra.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="distributor_brands",schema="rxmitra2")
public class DistributorBrands {

	
	@Id
	@GeneratedValue
	@Column(name="DISTRIBUTOR_BRAND_ID")
	private Integer distributorBrandId;
	@Column(name="CATEGORY")
	private String category;
	@Column(name="DISTRIBUTOR_BRANDS")
	private String distributorBrands;
	@Column(name="DISTRIBUTOR_ID")
	private Integer distributorId;
	
	
	public Integer getDistributorBrandId() {
		return distributorBrandId;
	}
	public void setDistributorBrandId(Integer distributorBrandId) {
		this.distributorBrandId = distributorBrandId;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDistributorBrands() {
		return distributorBrands;
	}
	public void setDistributorBrands(String distributorBrands) {
		this.distributorBrands = distributorBrands;
	}
	public Integer getDistributorId() {
		return distributorId;
	}
	public void setDistributorId(Integer distributorId) {
		this.distributorId = distributorId;
	}
	

	@Override
	public String toString() {
		return "DistributorBrands [distributorBrandId=" + distributorBrandId + ", distributorBrands="
				+ distributorBrands + ", distributorId=" + distributorId + "]";
	}
	
}
