package com.rxmitra.bean;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="addinvoice_table",schema="rxmitra2")
public class AddInvoice {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ADDINVOICE_ID")
	private Integer addInvoiceId;
	@Column(name="INVOICE_NO")
	private Integer invoiceNo;
	@Column(name="MANUFACTURER")
	private String manufacturer;
	@Column(name="PRODUCT_NAME")
	private String productName;
	@Column(name="PROD_CATEGORY")
	private String productCategory;
	@Column(name="PROD_SUB_CATEGORY")
	private String productSubCategory;
	@Column(name="AGE_LIMIT")
	private String agelimit;
	@Column(name="WEIGHT")
	private Integer weight;
	@Column(name="PACKAGE_TYPE")
	private String packageType;
	@Column(name="SKUID")
	private String skuid;
	@Column(name="BATCH_ID")
	private String batchId;
	@Column(name="QUANTITY")
	private Integer quantity;
	@Column(name="INVOICE_UPLOAD_DATE")
	private String invoiceUploadDate;
	@Column(name="INVOICE_Update_DATE")
	private String invoiceUpdateDate;
	@Column(name="EXPIRY_DATE")
	private String expiryDate;
	@Column(name="INVOICE_DATE")
	private String invoiceDate;
	@Column(name="PURCHASE_PRICE")
	private Integer purchasePrice;
	@Column(name="DISCOUNT_PRICE")
	private Integer discountPrice;
	@Column(name="ACTUAL_PRICE")
	private Integer actualPrice;
	@Column(name="MRP")
	private Integer mrp;
	@Column(name="SALES_DISCOUNT")
	private Integer salesDiscount;
	@Column(name="SELLING_PRICE")
	private Integer sellingPrice;
	@Column(name="PUBLISHED")
	private String published;
	@Column(name="VENDOR_ID")
	private Integer vendorid;

	@Column(name="USER_ID")
	private Integer userId;
	
	public Integer getAddInvoiceId() {
		return addInvoiceId;
	}
	public void setAddInvoiceId(Integer addInvoiceId) {
		this.addInvoiceId = addInvoiceId;
	}
	public Integer getInvoiceNo() {
		return invoiceNo;
	}
	public void setInvoiceNo(Integer invoiceNo) {
		this.invoiceNo = invoiceNo;
	}
	
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public String getProductSubCategory() {
		return productSubCategory;
	}
	public void setProductSubCategory(String productSubCategory) {
		this.productSubCategory = productSubCategory;
	}
	public String getAgelimit() {
		return agelimit;
	}
	public void setAgelimit(String agelimit) {
		this.agelimit = agelimit;
	}
	public Integer getWeight() {
		return weight;
	}
	public void setWeight(Integer weight) {
		this.weight = weight;
	}
	public String getPackageType() {
		return packageType;
	}
	public void setPackageType(String packageType) {
		this.packageType = packageType;
	}
	public String getSkuid() {
		return skuid;
	}
	public void setSkuid(String skuid) {
		this.skuid = skuid;
	}
	public String getBatchId() {
		return batchId;
	}
	public void setBatchId(String batchId) {
		this.batchId = batchId;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	public String getInvoiceUploadDate() {
		return invoiceUploadDate;
	}
	public void setInvoiceUploadDate(String invoiceUploadDate) {
		this.invoiceUploadDate = invoiceUploadDate;
	}
	public String getExpiryDate() {
		return expiryDate;
	}
	
	
	public String getInvoiceUpdateDate() {
		return invoiceUpdateDate;
	}
	public void setInvoiceUpdateDate(String invoiceUpdateDate) {
		this.invoiceUpdateDate = invoiceUpdateDate;
	}
	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}
	
	public String getInvoiceDate() {
		return invoiceDate;
	}
	public void setInvoiceDate(String invoiceDate) {
		this.invoiceDate = invoiceDate;
	}
	public Integer getPurchasePrice() {
		return purchasePrice;
	}
	public void setPurchasePrice(Integer purchasePrice) {
		this.purchasePrice = purchasePrice;
	}
	public Integer getDiscountPrice() {
		return discountPrice;
	}
	public void setDiscountPrice(Integer discountPrice) {
		this.discountPrice = discountPrice;
	}
	
	public Integer getActualPrice() {
		return actualPrice;
	}
	public void setActualPrice(Integer actualPrice) {
		this.actualPrice = actualPrice;
	}
	
	public Integer getMrp() {
		return mrp;
	}
	public void setMrp(Integer mrp) {
		this.mrp = mrp;
	}
	public Integer getSalesDiscount() {
		return salesDiscount;
	}
	public void setSalesDiscount(Integer salesDiscount) {
		this.salesDiscount = salesDiscount;
	}
	public Integer getSellingPrice() {
		return sellingPrice;
	}
	public void setSellingPrice(Integer sellingPrice) {
		this.sellingPrice = sellingPrice;
	}
	
	
	public String getPublished() {
		return published;
	}
	public void setPublished(String published) {
		this.published = published;
	}
	public Integer getVendorid() {
		return vendorid;
	}
	public void setVendorid(Integer vendorid) {
		this.vendorid = vendorid;
	}
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
	@Override
	public String toString() {
		return "AddInvoice [addInvoiceId=" + addInvoiceId + ", invoiceNo=" + invoiceNo + ", manufacturer="
				+ manufacturer + ", productName=" + productName + ", productCategory=" + productCategory
				+ ", productSubCategory=" + productSubCategory + ", agelimit=" + agelimit + ", weight=" + weight
				+ ", packageType=" + packageType + ", skuid=" + skuid + ", batchId=" + batchId + ", quantity="
				+ quantity + ", invoiceUploadDate=" + invoiceUploadDate + ", invoiceUpdateDate=" + invoiceUpdateDate
				+ ", expiryDate=" + expiryDate + ", invoiceDate=" + invoiceDate + ", purchasePrice=" + purchasePrice
				+ ", discountPrice=" + discountPrice + ", actualPrice=" + actualPrice + ", mrp=" + mrp
				+ ", salesDiscount=" + salesDiscount + ", sellingPrice=" + sellingPrice + ", published=" + published
				+ ", vendorid=" + vendorid + ", userId=" + userId + "]";
	}
	
	
	
}
