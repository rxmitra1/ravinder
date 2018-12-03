package com.rxmitra.bean;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "product_detail", schema = "rxmitra2")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="SEQ_PRODUCT_ID")
	private int seqproductid;
	@Column(name="CATEGORY")
	private String category;
	@Column(name="SUB_CATEGORY")
	private String subcategory;
	@Column(name="PRODUCT_NAME")
	private String productname;
	@Column(name="QUANTITY")
	private String quantity;
	@Column(name="EXPIRY_DATE")
	private String expirydate;
	@Column(name="MANUFACTURE_DATE")
	private String manufacturedate;
	@Column(name="BATCH_ID")
	private String batchid;
	@Column(name="PRODUCT_DESCRIPTION")
	private String productdescription;
	@Column(name="PHOTO")
	private byte[] photo;
	@Column(name="PRICE")
	private String price;
	
	
	public int getSeqproductid() {
		return seqproductid;
	}
	public void setSeqproductid(int seqproductid) {
		this.seqproductid = seqproductid;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSubcategory() {
		return subcategory;
	}
	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getExpirydate() {
		return expirydate;
	}
	public void setExpirydate(String expirydate) {
		this.expirydate = expirydate;
	}
	public String getManufacturedate() {
		return manufacturedate;
	}
	public void setManufacturedate(String manufacturedate) {
		this.manufacturedate = manufacturedate;
	}
	public String getBatchid() {
		return batchid;
	}
	public void setBatchid(String batchid) {
		this.batchid = batchid;
	}
	public String getProductdescription() {
		return productdescription;
	}
	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Product [seqproductid=" + seqproductid + ", category=" + category + ", subcategory=" + subcategory
				+ ", productname=" + productname + ", quantity=" + quantity + ", expirydate=" + expirydate
				+ ", manufacturedate=" + manufacturedate + ", batchid=" + batchid + ", productdescription="
				+ productdescription + ", photo=" + Arrays.toString(photo) + ", price=" + price + "]";
	}
	
	

	
}
