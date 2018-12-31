package com.rxmitra.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rxmitra.bean.AddInvoice;
import com.rxmitra.bean.Publish;
import com.rxmitra.bean.Vendor;
import com.rxmitra.exception.VendorException;

@Repository
@Transactional
public class AddInvoiceDAO {
	@Autowired
	private HibernateTemplate template;

	// Store the Invoice in Database
	public int updateUserInfos(List<AddInvoice> plstUserInfo) {
		int i = 0;
		if (plstUserInfo != null && plstUserInfo.size() > 0) {

			for (AddInvoice addInvoice : plstUserInfo) {

				Integer purchasePrice = addInvoice.getPurchasePrice();
				Integer discountPrice = addInvoice.getDiscountPrice();
				Integer actualPrice = purchasePrice - (purchasePrice * discountPrice / 100);

				addInvoice.setActualPrice(actualPrice);

				i = (Integer) template.save(addInvoice);
			}
		}
		return i;
	}

	public List<AddInvoice> viewVendorInvoice(Integer vendorid, int pageid, int limit) {
		String query = "from com.rxmitra.bean.AddInvoice where vendorid='" + vendorid + "'";
		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		createQuery.setFirstResult((pageid - 1));
		createQuery.setMaxResults(limit);
		List<AddInvoice> list = createQuery.list();
		return list;
	}

	// pagination
	public List<AddInvoice> viewVendorInvoiceDetails(String userId,String invoiceNo, int pageid, int limit) {
		Integer invoiceNo1 = Integer.parseInt(invoiceNo);

		String query = "from com.rxmitra.bean.AddInvoice where invoiceNo='" + invoiceNo1 + "' and userId='"+userId+"'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		createQuery.setFirstResult((pageid - 1));
		createQuery.setMaxResults(limit);
		List<AddInvoice> list = createQuery.list();

		return list;
	}

	// Update Invoice by InvoiceNo
	public String updateInvoiceByInvoiceNo(AddInvoice addInvoice) {
		String message = "";
		System.out.println(
				addInvoice.getAddInvoiceId() + "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$@@");
		template.saveOrUpdate(addInvoice);
		message = "updated";
		return message;
	}

	// Delete Invoice by InvoiceNo
	public String deleteInvoiceByInvoiceNo(Integer invoiceNo) {
		String message = "";
		int i = 0;
		String query = "delete com.rxmitra.bean.AddInvoice i where i.invoiceNo='" + invoiceNo + "'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		i = createQuery.executeUpdate();
		if (i > 0) {
			message = "Deleted";
		} else if (i == 0) {

		} else {
			message = "Not Deleted";
		}

		return message;
	}

	// Delete Invoice by squid or productName or Manufacturer
	/*
	 * public String deleteInvoiceBySkuid(String invoiceSkuid, String productName,
	 * String manufacturer) { String message = ""; String query =
	 * "delete com.rxmitra.bean.AddInvoice i where (i.skuid='" + invoiceSkuid +
	 * "' or i.productName='" + productName + "' or i.manufacturer='" + manufacturer
	 * + "')";
	 * 
	 * Query createQuery =
	 * template.getSessionFactory().openSession().createQuery(query); int i =
	 * createQuery.executeUpdate(); if (i > 0) { message = "Deleted"; } else {
	 * message = "Not Deleted"; }
	 * 
	 * return message; }
	 */

	// Display the total quantity by squid or productName or Manufacturer
	public List<AddInvoice> viewVendorInvoiceBySkuid(String invoiceSkuid, String productName, String manufacturer) {
		String query = "from com.rxmitra.bean.AddInvoice i where (i.skuid='" + invoiceSkuid + "' or i.productName='"
				+ productName + "' or i.manufacturer='" + manufacturer + "')";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		List<AddInvoice> list = createQuery.list();

		return list;
	}

	// Display the total quantity of all squid's
	public List<Object[]> viewVendorInvoiceBySkuid() {
		String query = "select i.productName,i.packageType,i.skuid,sum(quantity) from com.rxmitra.bean.AddInvoice i group by i.skuid";
		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		List<Object[]> list = createQuery.list();

		return list;
	}

	// Display the all invoice Details by squid
	public List<AddInvoice> viewVendorInvoiceBySkuid1(String userId, String invoiceSkuid, String productName,
			String manufacturer, Integer pageid, Integer limit) {
		String query = "from com.rxmitra.bean.AddInvoice i where (i.skuid='" + invoiceSkuid + "' or i.productName='"
				+ productName + "' or i.manufacturer='" + manufacturer + "') and i.userId='" + userId + "'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		createQuery.setFirstResult((pageid - 1));
		createQuery.setMaxResults(limit);
		List<AddInvoice> list = createQuery.list();
		return list;
	}

	public List<AddInvoice> viewVendorInvoiceByAllInPublish(String userId, Integer pageid, Integer limit) {
		String publish = "NO";
		String query = "from com.rxmitra.bean.AddInvoice i where i.userId='" + userId + "' and i.published='" + publish
				+ "'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		createQuery.setFirstResult((pageid - 1));
		createQuery.setMaxResults(limit);
		List<AddInvoice> list = createQuery.list();
		return list;
	}

	// view Invoice by Invoice id
	public AddInvoice viewVendorInvoiceByInvoiceId(Integer invoiceId) {

		AddInvoice addInvoice = template.get(AddInvoice.class, invoiceId);
		return addInvoice;
	}

	public String addPublish(List<Publish> publish) {
		String message = "";
		int i = 0;
		for (Publish publish2 : publish) {
			i = (Integer) template.save(publish2);
		}

		if (i > 0) {
			message = "success";
		} else {
			message = "fail";
		}
		return message;
	}

	public void updateInvoicePublish(List<Integer> invoiceIdList) {
		for (Integer integer : invoiceIdList) {
			AddInvoice addInvoice = template.load(AddInvoice.class, integer);
			addInvoice.setPublished("YES");
			template.save(addInvoice);

		}

	}

	public List<AddInvoice> setSalesPrice(String userId, String skuid, String manufacturer, String productName,
			int pageid, int total) {
		String query = "from com.rxmitra.bean.AddInvoice ai where (ai.skuid='" + skuid + "' or  ai.manufacturer='"
				+ manufacturer + "' or  ai.productName='" + productName + "') and ai.userId='" + userId + "'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		createQuery.setFirstResult((pageid - 1));
		createQuery.setMaxResults(total);
		List<AddInvoice> list = createQuery.list();

		return list;
	}

	public List<AddInvoice> setSalesPrice1(String userId, String skuid, String manufacturer, String productName) {
		String query = "from com.rxmitra.bean.AddInvoice ai where (ai.skuid='" + skuid + "' or  ai.manufacturer='"
				+ manufacturer + "' or  ai.productName='" + productName + "') and ai.userId='" + userId + "'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		// createQuery.setFirstResult((pageid - 1));
		// createQuery.setMaxResults(total);
		List<AddInvoice> list = createQuery.list();

		return list;
	}

	public List<AddInvoice> viewSetSalesPriceAll(String userid, int pageid, int total) {
		int userId = Integer.parseInt(userid);
		String query = "from com.rxmitra.bean.AddInvoice where userId='" + userId + "'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		createQuery.setFirstResult((pageid - 1));
		createQuery.setMaxResults(total);
		List<AddInvoice> list = createQuery.list();

		return list;
	}

	//Pagination start

	
	public Long countTotalForPaginationInvoiceByVendor(Integer vendorId) {
		String query = "select count(*) from com.rxmitra.bean.AddInvoice where vendorid='" + vendorId + "'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		Long count = (Long) createQuery.uniqueResult();

		return count;
	}
	public Long countTotalForPaginationUpdateInvoice(String userId,String invoiceNo) {
		String query = "select count(*) from com.rxmitra.bean.AddInvoice where userId='" + userId + "' and invoiceNo='"+invoiceNo+"'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		Long count = (Long) createQuery.uniqueResult();

		return count;
	}
	public Long countTotalForPaginationUpdateInvoiceAll(String userId) {
		String query = "select count(*) from com.rxmitra.bean.AddInvoice where userId='" + userId + "'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		Long count = (Long) createQuery.uniqueResult();

		return count;
	}
	public Long countTotalForPagination(String userId) {
		String query = "select count(*) from com.rxmitra.bean.AddInvoice where userId='" + userId + "'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		Long count = (Long) createQuery.uniqueResult();

		return count;
	}

	public Long countTotalForPaginationInPublish(String userId) {
		String publish = "NO";
		String query = "select count(*) from com.rxmitra.bean.AddInvoice where userId='" + userId
				+ "' and published='" + publish + "'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		Long count = (Long) createQuery.uniqueResult();

		return count;
	}

	
	// Pagination End
	
	
	// update Set Sales By Skuid
	public String updateSetSalesBySkuid(List<AddInvoice> addInvoiceList) {
		String message = "";
		int i = 0;
		// System.out.println(addInvoice.getAddInvoiceId()+"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$@@");
		for (AddInvoice addInvoice : addInvoiceList) {
			template.update(addInvoice);
			i++;
		}
		if (i > 0) {
			message = "updated";
		} else {

		}

		return message;
	}

	public List<String> searchProductsInIndexPage(String productName) {
		// String publish="YES";

		String query = "select ai.productName from com.rxmitra.bean.AddInvoice ai where ai.productName like :keyword";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		createQuery.setParameter("keyword", "%" + productName + "%");

		List<String> list = createQuery.list();

		return list;
	}

	public List<AddInvoice> getProductDetailsInSearchPage(String productName) {
		String publish = "YES";

		String query = "from com.rxmitra.bean.AddInvoice ai where ai.productName like :keyword and ai.published=:published ";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		// createQuery.setParameter("productName", productName);
		createQuery.setParameter("keyword", "%" + productName + "%");
		createQuery.setParameter("published", publish);

		List<AddInvoice> list = createQuery.list();

		return list;
	}

}
