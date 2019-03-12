package com.rxmitra.dao;

import java.util.ArrayList;
import java.util.List;


import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rxmitra.bean.Vendor;
import com.rxmitra.bean.VendorProduct;

import com.rxmitra.exception.VendorException;
//import com.rythumitra.utilities.IdGen;
//import com.rythumitra.utilities.ShopDetails;

@Repository
@Transactional
public class VendorDAOImpl implements VendorDAO {

	@Autowired
	private HibernateTemplate template;

	//@Autowired
	//private SessionFactory factory;
	//static Connection con = null;
	//private int noOfRecords = 0;

	public int insertVendor(Vendor vendor) throws VendorException {

		int i = (Integer) template.save(vendor);
		return i;
	}

	public List<Vendor> displayVendorDetails(String refId,int pageid,int limit) throws VendorException {
		
		String sql="from com.rxmitra.bean.Vendor where userId="+refId+"";
		
		 Query createQuery = template.getSessionFactory().openSession().createQuery(sql);
		 createQuery.setFirstResult((pageid-1));
		createQuery.setMaxResults(limit);
		@SuppressWarnings("unchecked")
		List<Vendor> list = createQuery.list();
		return list;
	}
   

	public List<Vendor> displayVendorDetails() throws VendorException {
		
		List<Vendor> loadAll = template.loadAll(Vendor.class);
		
		return loadAll;
	}
	
	
	public Vendor getVendor(Vendor vendor, Integer vid) {

		Vendor vendor2 = template.get(Vendor.class, vid);
		return vendor2;
	}
	
	public Long countTotalForPaginationDisplayVendor(String refId) {
		String query = "select count(*) from com.rxmitra.bean.Vendor where userId='"+refId+"'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		Long count = (Long) createQuery.uniqueResult();

		return count;
	}
	public Vendor getVendor(String vendorname,String refId) {
		
		
        String sql="from Vendor v where v.vendorName='"+vendorname+"' and v.userId="+refId+"";
		Query query = template.getSessionFactory().openSession().createQuery(sql);
		Vendor vendor2 = (Vendor) query.uniqueResult();
		System.out.println(vendor2+"=============================================");
		return vendor2;
	}
	public int addVendorProducts(ArrayList<VendorProduct> vendorProductList) {
		int i = 0;
		for (VendorProduct vendorProduct : vendorProductList) {
			i = (Integer) template.save(vendorProduct);
			i++;
		}
		return i;
	}

	@SuppressWarnings("unchecked")
	public List<VendorProduct> displayProducts(Integer refId) {
		System.out.println(refId+"ttttttttttttttttt");
        String sql="from VendorProduct vp where vp.vendorId="+refId+"";
		Query query = template.getSessionFactory().openSession().createQuery(sql);
        List<VendorProduct> list = query.list();

		return list;

	}
	@SuppressWarnings("unchecked")
	public List<VendorProduct> displayVendorProducts(int pageid,int limit) {
		String query="from com.rxmitra.bean.VendorProduct";
		Query query2 = template.getSessionFactory().openSession().createQuery(query);
        query2.setFirstResult((pageid-1));
        query2.setMaxResults(limit);
        List<VendorProduct> list = query2.list();
		return list;

	}
	
	@SuppressWarnings("unchecked")
	public List<VendorProduct> displayVendorProducts(String vendorname,String refId,int pageid,int limit) {
		String query="from com.rxmitra.bean.Vendor where vendorName='"+vendorname+"' and userId='"+refId+"'";
		

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		Vendor vendor = (Vendor) createQuery.uniqueResult();
		String query1="from com.rxmitra.bean.VendorProduct where vendorId='"+vendor.getVendorId()+"'";
		Query creayteQuery1 = template.getSessionFactory().openSession().createQuery(query1);

        List<VendorProduct> list1 = creayteQuery1.list();
		return list1;

	}
	
	public Long countTotalForPaginationInVendorProduct(String vendorName) {
		String query="select count(*) from com.rxmitra.bean.VendorProduct";
		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		Long count = (Long) createQuery.uniqueResult();

		return count;
	

	}
	
	public String insertUserVendor(Vendor vendor) throws VendorException {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean checkVendor(Vendor vendor) throws VendorException {
		// TODO Auto-generated method stub
		return false;
	}

	public Vendor getVendorDetails(String vendorid) throws VendorException {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Vendor> viewVendorByName(String vendorname, String tinno, String shopid) throws VendorException {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Vendor> viewVendorByName(String vendorname, String tinno) throws VendorException {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Vendor> viewVendorByInvoiceno(String invoiceno, String tinno) throws VendorException {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Vendor> getVendorAllDetails(String vendorid) throws VendorException {
		// TODO Auto-generated method stub
		return null;
	}

	public String getUserShopDetails(String userid) throws VendorException {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Vendor> SearchVendorDetails(Vendor v, int offset, int noOfRecords) throws VendorException {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Vendor> SearchVendorDetailsById(Vendor v, String shopid, int offset, int noOfRecords)
			throws VendorException {
		// TODO Auto-generated method stub
		return null;
	}

	public int getNoOfRecords() throws VendorException {
		// TODO Auto-generated method stub
		return 0;
	}

	public String updateVendorDetails(Vendor vendor) throws VendorException {
		// TODO Auto-generated method stub
		return null;
	}

	

}
