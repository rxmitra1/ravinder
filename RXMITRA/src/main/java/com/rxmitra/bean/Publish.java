package com.rxmitra.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="publish_tbl",schema="rxmitra2")
public class Publish {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="PUBLISH_ID")
	private Integer publishId;
	@Column(name="SKUID")
	private String skuid;
	@Column(name="PRODUCT_NAME")
	private String productName;
	@Column(name="USERID")
	private String userId;
	@Column(name="SALES_PRICE")
	private String salesPrice;
	@Column(name="MRP")
	private Integer mrp;
	@Column(name="SALES_DISCOUNT")
	private String salesDiscount;
	@Column(name="SELLING_PRICE")
	private String sellingPrice;
	
	public Integer getPublishId() {
		return publishId;
	}
	public void setPublishId(Integer publishId) {
		this.publishId = publishId;
	}
	public String getSkuid() {
		return skuid;
	}
	public void setSkuid(String skuid) {
		this.skuid = skuid;
	}
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getSalesPrice() {
		return salesPrice;
	}
	public void setSalesPrice(String salesPrice) {
		this.salesPrice = salesPrice;
	}
	public Integer getMrp() {
		return mrp;
	}
	public void setMrp(Integer mrp) {
		this.mrp = mrp;
	}
	public String getSalesDiscount() {
		return salesDiscount;
	}
	public void setSalesDiscount(String salesDiscount) {
		this.salesDiscount = salesDiscount;
	}
	public String getSellingPrice() {
		return sellingPrice;
	}
	public void setSellingPrice(String sellingPrice) {
		this.sellingPrice = sellingPrice;
	}
	@Override
	public String toString() {
		return "Publish [publishId=" + publishId + ", skuid=" + skuid + ", productName=" + productName + ", userId="
				+ userId + ", salesPrice=" + salesPrice + ", mrp=" + mrp + ", salesDiscount=" + salesDiscount
				+ ", sellingPrice=" + sellingPrice + "]";
	}


	
}
