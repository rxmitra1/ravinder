package com.rxmitra.dao;

import java.util.ArrayList;
import java.util.List;

import com.rxmitra.bean.Vendor;
import com.rxmitra.bean.VendorProduct;
//import com.rythumitra.bean.WayBills;
import com.rxmitra.exception.VendorException;

public interface VendorDAO {
	
	public int insertVendor(Vendor vendor)throws VendorException;
	public String insertUserVendor(Vendor vendor)throws VendorException;
	public boolean checkVendor(Vendor vendor)throws VendorException;
	//public boolean insertVendor(Vendor vendor,WayBills waybill)throws VendorException;
	//public boolean insertWayBill(WayBills waybill)throws VendorException;
	//public boolean checkInvoice(WayBills waybill)throws VendorException;
	public List<Vendor> displayVendorDetails(String refId,int pageid,int limit)throws VendorException;
	public List<Vendor> displayVendorDetails()throws VendorException;

	public Vendor getVendorDetails(String vendorid)throws VendorException;
	/*public ArrayList<WayBills> getInvoiceDetails(String invoiceno)throws VendorException;*/
	public ArrayList<Vendor> viewVendorByName(String vendorname,String tinno,String shopid) throws VendorException;
	public ArrayList<Vendor> viewVendorByName(String vendorname,String tinno) throws VendorException;
	public ArrayList<Vendor> viewVendorByInvoiceno(String invoiceno,String tinno) throws VendorException;
	public ArrayList<Vendor> getVendorAllDetails(String vendorid)throws VendorException;
	//public boolean insertUserWayBill(WayBills waybill)throws VendorException;
	public String getUserShopDetails(String userid) throws VendorException;
	public ArrayList<Vendor> SearchVendorDetails(Vendor v,int offset,int noOfRecords)throws VendorException;
	public ArrayList<Vendor> SearchVendorDetailsById(Vendor v,String shopid,int offset,int noOfRecords)throws VendorException;
	public int getNoOfRecords() throws VendorException;
	public String updateVendorDetails(Vendor vendor) throws VendorException;
	public Vendor getVendor(String vendorname,String refId);
	public Vendor getVendor(Vendor vendor,Integer vid);
	public int addVendorProducts(ArrayList<VendorProduct> vendorProductList);
	public List<VendorProduct> displayProducts(Integer refId);
	public List<VendorProduct> displayVendorProducts(int pageid,int limit);
	public List<VendorProduct> displayVendorProducts(String vendorname,String refId,int pageid,int limit);
	public Long countTotalForPaginationInVendorProduct(String vendorName);
	public Long countTotalForPaginationDisplayVendor(String refId);


}
