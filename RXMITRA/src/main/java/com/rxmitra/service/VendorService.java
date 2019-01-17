package com.rxmitra.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.Vendor;
import com.rxmitra.bean.VendorProduct;
import com.rxmitra.dao.VendorDAO;
import com.rxmitra.exception.VendorException;

@Service
public class VendorService {

	@Autowired
	private VendorDAO dao;

	public int registerVendor(Vendor vendor, HttpServletRequest request) throws VendorException {

		vendor.setShopId("SHOP");
		vendor.setCstNo("CST");
		// vendor.setTIN_NO("TINNO");
		int i = dao.insertVendor(vendor);

		return i;
	}

	public List<Vendor> dispalyVendor(String refId, int pageid, int limit) throws VendorException {
		List<Vendor> list = dao.displayVendorDetails(refId, pageid, limit);
		return list;
	}

	public Vendor getVendor(Vendor vendor, Integer vid) {
		Vendor vendor2 = dao.getVendor(vendor, vid);
		return vendor2;
	}
	public Long countTotalForPaginationDisplayVendor(String refId) {
		Long vendor2 = dao.countTotalForPaginationDisplayVendor(refId);
		return vendor2;
	}

	public Vendor getVendor(String vendorname, String refId) {
		Vendor vendor2 = dao.getVendor(vendorname, refId);
		return vendor2;
	}

	public int addVendorProducts(ArrayList<VendorProduct> vendorProductList) {
		int i = dao.addVendorProducts(vendorProductList);
		return i;

	}
	
	//Pagination start
	public Long countTotalForPaginationInVendorProduct(String vendorName) {
		Long count = dao.countTotalForPaginationInVendorProduct(vendorName);
		return count;
	}
	

	public List<VendorProduct> displayProducts(Integer refId) {
		// product.setSEQ_PRODUCT_ID(12);
		List<VendorProduct> displayProducts = dao.displayProducts(refId);
		return displayProducts;
	}

	public List<VendorProduct> displayVendorProducts(int pageid, int total) {
		// product.setSEQ_PRODUCT_ID(12);
		List<VendorProduct> displayProducts = dao.displayVendorProducts(pageid, total);
		return displayProducts;
	}
	
	public List<VendorProduct> displayVendorProducts(String vendorname,String refId,int pageid, int total) {
		// product.setSEQ_PRODUCT_ID(12);
		List<VendorProduct> displayProducts = dao.displayVendorProducts(vendorname,refId,pageid, total);
		return displayProducts;
	}
}
