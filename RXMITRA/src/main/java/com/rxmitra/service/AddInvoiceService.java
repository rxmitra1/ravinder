package com.rxmitra.service;

import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.AddInvoice;
import com.rxmitra.bean.Publish;
import com.rxmitra.dao.AddInvoiceDAO;

@Service
public class AddInvoiceService {
	@Autowired
	private AddInvoiceDAO dao;

	public int updateList(List<AddInvoice> lstUser) {
		int i = dao.updateUserInfos(lstUser);
		return i;
	}

	public List<AddInvoice> viewVendorInvoice(Integer vendorid, int pageid, int limit) {
		List<AddInvoice> list = dao.viewVendorInvoice(vendorid, pageid, limit);
		return list;
	}

	// pagination
	public List<AddInvoice> viewVendorInvoiceDetails(Integer invoiceNo, int pageid, int limit) {
		List<AddInvoice> list = dao.viewVendorInvoiceDetails(invoiceNo, pageid, limit);
		return list;
	}

	public String updateInvoiceByInvoiceNo(AddInvoice addInvoice) {
		String message = dao.updateInvoiceByInvoiceNo(addInvoice);
		return message;
	}
	public String deleteInvoiceByInvoiceNo(Integer invoiceNo) {
		String message = dao.deleteInvoiceByInvoiceNo(invoiceNo);
		return message;
	}
	
	/*public String deleteInvoiceBySkuid(String invoiceSkuid, String productName, String manufacturer) {
		String message = dao.deleteInvoiceBySkuid(invoiceSkuid, productName, manufacturer);
		return message;
	}*/

	public List<AddInvoice> viewVendorInvoiceBySkuid(String invoiceSkuid, String productName, String manufacturer) {
		List<AddInvoice> list = dao.viewVendorInvoiceBySkuid(invoiceSkuid, productName, manufacturer);
		return list;
	}

	public List<Object[]> viewVendorInvoiceBySkuid() {
		List<Object[]> list = dao.viewVendorInvoiceBySkuid();

		return list;
	}

	public List<AddInvoice> viewVendorInvoiceBySkuid1(String userId,String invoiceSkuid, String productName, String manufacturer,Integer pageid, Integer limit) {
		List<AddInvoice> list = dao.viewVendorInvoiceBySkuid1(userId,invoiceSkuid,productName,manufacturer, pageid, limit);
		return list;
	}
	
	public List<AddInvoice> viewVendorInvoiceByAllInPublish(String userId,Integer pageid, Integer limit) {
		List<AddInvoice> list = dao.viewVendorInvoiceByAllInPublish(userId, pageid, limit);
		return list;
	}
	
	public AddInvoice viewVendorInvoiceByInvoiceId(String invoiceId) {
		int i = Integer.parseInt(invoiceId);
		AddInvoice invoiceId2 = dao.viewVendorInvoiceByInvoiceId(i);

		return invoiceId2;
	}

	public String addPublish(List<Publish> publish) {
       String message = dao.addPublish(publish);
		return message;
	}

	public void updateInvoicePublish(List<Integer> invoiceIdList){
		dao.updateInvoicePublish(invoiceIdList);
	}
	
	// pagination
		public List<AddInvoice> setSalesPrice(String userId,String skuid,String manufacturer,String productName) {
			List<AddInvoice> list = dao.setSalesPrice(userId,skuid,manufacturer,productName);
			return list;
		}
		
		public List<AddInvoice> viewSetSalesPriceAll() {
		List<AddInvoice> list = dao.viewSetSalesPriceAll();
			return list;
		}
		public String updateSetSalesBySkuid(List<AddInvoice> addInvoice) {
			String message = dao.updateSetSalesBySkuid(addInvoice);
			return message;
		}
		
		public List<String> searchProductsInIndexPage(String productName){
			List<String> list = dao.searchProductsInIndexPage(productName);
			return list;
		}
		public List<AddInvoice> getProductDetailsInSearchPage(String productName){
			List<AddInvoice> list = dao.getProductDetailsInSearchPage(productName);
			return list;
		}
}
