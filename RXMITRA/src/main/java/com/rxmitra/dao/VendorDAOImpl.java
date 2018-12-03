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

	public List<VendorProduct> displayProducts() {
		List<VendorProduct> list = template.loadAll(VendorProduct.class);

		return list;

	}
	public List<VendorProduct> displayVendorProducts(int pageid,int limit) {
		String query="from com.rxmitra.bean.VendorProduct";
		Query query2 = template.getSessionFactory().openSession().createQuery(query);
        query2.setFirstResult((pageid-1));
        query2.setMaxResults(limit);
        List<VendorProduct> list = query2.list();
		return list;

	}
	
	public List<VendorProduct> displayVendorProducts(String vendorname,String refId,int pageid,int limit) {
		String query="from com.rxmitra.bean.Vendor where vendorName='"+vendorname+"' and userId='"+refId+"'";
		

		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		Vendor vendor = (Vendor) createQuery.uniqueResult();
		String query1="from com.rxmitra.bean.VendorProduct where vendorId='"+vendor.getVendorId()+"'";
		Query creayteQuery1 = template.getSessionFactory().openSession().createQuery(query1);

        List<VendorProduct> list1 = creayteQuery1.list();
		return list1;

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

	

	
	/*
	 * public String insertUserVendor(Vendor vendor) throws VendorException {
	 * boolean b = false; PreparedStatement pst = null; String query =
	 * "INSERT INTO `vendor_table` (`SEQ_VENDOR_ID`, `VENDOR_NAME`, `ADDRESS`, `TIN_NO`, `PAN_NO`, `CST_NO`, `LICENSE_NO`, `PHONE_NO1`, `PHONE_NO2`, `BANK_NAME`, `ACCOUNT_NO`, `IFSC_CODE`, `SHOP_ID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	 * ; int vendorid = 0; try { con = DBConnection.getConnection();
	 * con.setAutoCommit(false); pst = con.prepareStatement(query); vendorid =
	 * new IdGen().getId("SEQ_VENDOR_ID");
	 * 
	 * pst.setString(1, String.valueOf(vendorid)); pst.setString(2,
	 * vendor.getVENDOR_NAME()); pst.setString(3, vendor.getADDRESS());
	 * pst.setString(4, vendor.getTIN_NO()); pst.setString(5,
	 * vendor.getPAN_NO()); pst.setString(6, getValue(vendor.getCST_NO()));
	 * pst.setString(7, getValue(vendor.getLICENSE_NO())); pst.setString(8,
	 * getValue(vendor.getPHONE_NO1())); pst.setString(9,
	 * getValue(vendor.getPHONE_NO2())); pst.setString(10,
	 * getValue(vendor.getBANK_NAME())); pst.setString(11,
	 * getValue(vendor.getACCOUNT_NO())); pst.setString(12,
	 * getValue(vendor.getIFSC_CODE())); pst.setString(13, vendor.getSHOP_ID());
	 * int i = pst.executeUpdate();
	 * 
	 * if (i > 0) { con.commit(); } else { vendorid = 0; } } catch (Exception e)
	 * { e.printStackTrace(); } finally { try { con.close(); pst.close(); }
	 * catch (Exception e) { e.printStackTrace(); } } return
	 * String.valueOf(vendorid); }
	 * 
	 * public boolean checkVendor(Vendor vendor) throws VendorException {
	 * boolean b = false; Statement st = null; ResultSet rs = null; String query
	 * = null; try { con = DBConnection.getConnection(); st =
	 * con.createStatement(); query =
	 * "select SEQ_VENDOR_ID from vendor_table where vendor_name = '" +
	 * vendor.getVENDOR_NAME() + "' and TIN_NO = '" + vendor.getTIN_NO() +
	 * "' and LICENSE_NO = '" + vendor.getLICENSE_NO() + "' and shop_id='" +
	 * vendor.getSHOP_ID() + "'"; rs = st.executeQuery(query); if (rs.next()) {
	 * b = true; }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally { try {
	 * con.close(); st.close(); rs.close(); } catch (Exception e) {
	 * e.printStackTrace(); } } return b; }
	 * 
	 * @Override public boolean insertVendor(Vendor vendor, WayBills waybill)
	 * throws VendorException { // TODO Auto-generated method stub boolean b =
	 * false; if (vendor.getVENDOR_ID().equals("other")) { b =
	 * insertVendorWayBill(vendor, waybill); } else { // Insert wayBill } return
	 * b; }
	 * 
	 * private boolean insertVendorWayBill(Vendor vendor, WayBills waybill) {
	 * boolean b = false; IdGen idgen = new IdGen(); PreparedStatement pst =
	 * null, pst1 = null, pst2 = null; String vquery =
	 * "INSERT INTO `vendor_table` (`SEQ_VENDOR_ID`, `VENDOR_NAME`, `ADDRESS`, `TIN_NO`, `PAN_NO`, `CST_NO`, `LICENSE_NO`, `PHONE_NO1`, `PHONE_NO2`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)"
	 * ; String vaquery =
	 * "INSERT INTO `vendor_accounts_details` (`SEQ_ACCOUNT_ID`, `VENDOR_ID`, `BANK_NAME`, `ACCOUNT_NO`, `IFSC_CODE`) VALUES (?, ?, ?, ?, ?)"
	 * ; String wquery =
	 * "INSERT INTO `waybills_table` (`SEQ_WAYBILL_ID`, `INVOICE_NO`, `VENDOR_ID`, `TOTAL_VALUE_OF_GOODS`, `VAT_PERCENT`, `DISCOUNTS`, `EXCISE_DUTY`, `SPECIAL_REBATE`, `EDUCATIONAL_CESS`, `CENTRAL_SALES_TAX`, `FREIGHT`, `INVOICE_DATE`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	 * ; try { con = DBConnection.getConnection(); pst =
	 * con.prepareStatement(vquery);// 9
	 * vendor.setVENDOR_ID(String.valueOf(idgen.getId("SEQ_VENDOR_ID")));
	 * pst.setString(1, vendor.getVENDOR_ID()); pst.setString(2,
	 * getValue(vendor.getVENDOR_NAME())); pst.setString(3,
	 * getValue(vendor.getADDRESS())); pst.setString(4,
	 * getValue(vendor.getTIN_NO())); pst.setString(5,
	 * getValue(vendor.getPAN_NO())); pst.setString(6,
	 * getValue(vendor.getCST_NO())); pst.setString(7,
	 * getValue(vendor.getLICENSE_NO())); pst.setString(8,
	 * getValue(vendor.getPHONE_NO1())); pst.setString(9,
	 * getValue(vendor.getPHONE_NO2()));
	 * 
	 * pst2 = con.prepareStatement(vaquery); pst2.setString(2,
	 * vendor.getVENDOR_ID()); pst2.setString(3, vendor.getBANK_NAME());
	 * pst2.setString(4, vendor.getACCOUNT_NO()); pst2.setString(5,
	 * vendor.getIFSC_CODE());
	 * 
	 * pst1 = con.prepareStatement(wquery);// 12
	 * waybill.setSEQ_WAYBILL(idgen.getId("SEQ_WAYBILL_ID")); pst1.setInt(1,
	 * waybill.getSEQ_WAYBILL_ID()); pst1.setString(2,
	 * getValue(waybill.getINVOICE_NO())); pst1.setString(3,
	 * getValue(vendor.getVENDOR_ID())); pst1.setString(4,
	 * getValue(waybill.getTOTAL_VALUE_OF_GOODS())); pst1.setString(5,
	 * getValue(waybill.getVAT_PERCENT())); pst1.setString(6,
	 * getValue(waybill.getDISCOUNTS())); pst1.setString(7,
	 * getValue(waybill.getEXCISE_DUTY())); pst1.setString(8,
	 * getValue(waybill.getSPECIAL_REBATE())); pst1.setString(9,
	 * getValue(waybill.getEDUCATIONAL_CESS())); pst1.setString(10,
	 * getValue(waybill.getCENTRAL_SALES_TAX())); pst1.setString(11,
	 * getValue(waybill.getFREIGHT())); pst1.setString(12,
	 * waybill.getINVOICE_DATE());
	 * 
	 * int i = pst.executeUpdate(); int j = pst1.executeUpdate(); int k =
	 * pst2.executeUpdate();
	 * 
	 * if (i > 0 && j > 0 && k > 0) { b = true; } else { con.rollback(); b =
	 * false; } } catch (Exception e) { e.printStackTrace(); } finally { try {
	 * con.close(); pst1.close(); pst.close(); } catch (Exception ee) {
	 * ee.printStackTrace(); } } return b; }
	 * 
	 * 
	 * private String getValue(String value) { if (value == null) { value = "-";
	 * } return value; }
	 * 
	 * private int getIntValue(String value) { int val = 0; if (value == null) {
	 * val = 0; } else if (value == "") { val = 0; } else if (value == "-") {
	 * val = 0; } return val; }
	 * 
	 * private ArrayList<Vendor> returnVendorDetails(String query) { Statement
	 * st = null; ResultSet rs = null; ArrayList<Vendor> al = new
	 * ArrayList<Vendor>(); try { con = DBConnection.getConnection(); st =
	 * con.createStatement(); rs = st.executeQuery(query); while (rs.next()) {
	 * Vendor v = new Vendor(); v.setVENDOR_ID(rs.getString("SEQ_VENDOR_ID"));
	 * v.setVENDOR_NAME(rs.getString("VENDOR_NAME"));
	 * v.setADDRESS(rs.getString("ADDRESS"));
	 * v.setTIN_NO(rs.getString("TIN_NO")); v.setPAN_NO(rs.getString("PAN_NO"));
	 * v.setCST_NO(rs.getString("CST_NO"));
	 * v.setLICENSE_NO(rs.getString("LICENSE_NO"));
	 * v.setPHONE_NO1(rs.getString("PHONE_NO1"));
	 * v.setPHONE_NO2(rs.getString("PHONE_NO2"));
	 * v.setACCOUNT_NO(rs.getString("ACCOUNT_NO"));
	 * v.setBANK_NAME(rs.getString("BANK_NAME"));
	 * v.setIFSC_CODE(rs.getString("IFSC_CODE"));
	 * v.setSHOP_ID(rs.getString("SHOP_ID")); al.add(v); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally { try {
	 * con.close(); st.close(); rs.close(); } catch (Exception ee) {
	 * ee.printStackTrace(); } } return al; }
	 * 
	 * public Vendor getVendorDetails(String vendorid) throws VendorException {
	 * Vendor v = new Vendor(); String query =
	 * "select * from vendor_table where SEQ_VENDOR_ID = '" + vendorid + "'";
	 * ArrayList<Vendor> al = new ArrayList<Vendor>(); try { al =
	 * returnVendorDetails(query); if (al.size() > 0) { v = al.get(0); } else {
	 * throw new VendorException("No Vendors Found on this " + vendorid); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } return v; }
	 * 
	 * public boolean insertWayBill(WayBills waybill) throws VendorException {
	 * 
	 * boolean b = false; PreparedStatement pst1 = null; String wquery =
	 * "INSERT INTO `waybills_table` (`SEQ_WAYBILL_ID`, `INVOICE_NO`, `VENDOR_ID`,`CATEGORY`, `TOTAL_VALUE_OF_GOODS`, `VAT_PERCENT`, `DISCOUNTS`, `EXCISE_DUTY`, `SPECIAL_REBATE`, `EDUCATIONAL_CESS`, `CENTRAL_SALES_TAX`, `SHOP_ID`, `FREIGHT`, `INVOICE_DATE`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	 * ; IdGen idgen = new IdGen(); String shopid = "", billid = ""; try { con =
	 * DBConnection.getConnection(); con.setAutoCommit(false); shopid =
	 * getShopId(waybill.getSHOP_ID()); pst1 = con.prepareStatement(wquery);//
	 * 12
	 * 
	 * waybill.setSEQ_WAYBILL(idgen.getId("SEQ_WAYBILL_ID")); pst1.setInt(1,
	 * waybill.getSEQ_WAYBILL_ID()); pst1.setString(2,
	 * getValue(waybill.getINVOICE_NO())); pst1.setString(3,
	 * getValue(waybill.getVENDOR_ID())); pst1.setString(4,
	 * getValue(waybill.getCATEGORY())); pst1.setInt(5,
	 * getIntValue(waybill.getTOTAL_VALUE_OF_GOODS())); pst1.setInt(6,
	 * getIntValue(waybill.getVAT_PERCENT())); pst1.setInt(7,
	 * getIntValue(waybill.getDISCOUNTS())); pst1.setString(8,
	 * getValue(waybill.getEXCISE_DUTY())); pst1.setString(9,
	 * getValue(waybill.getSPECIAL_REBATE())); pst1.setString(10,
	 * getValue(waybill.getEDUCATIONAL_CESS())); pst1.setString(11,
	 * getValue(waybill.getCENTRAL_SALES_TAX())); pst1.setString(12, shopid);
	 * pst1.setString(13, getValue(waybill.getFREIGHT())); pst1.setString(14,
	 * new SQLDate().getSQLDate(waybill.getINVOICE_DATE())); int i =
	 * pst1.executeUpdate();
	 * 
	 * if (i > 0) { b = true;
	 * 
	 * } } catch (Exception e) { } finally { try { con.close(); pst1.close(); }
	 * catch (Exception ee) { ee.printStackTrace(); } } return b; }
	 * 
	 * public boolean insertUserWayBill(WayBills waybill) throws VendorException
	 * { boolean b = false; PreparedStatement pst2 = null; String wquery2 =
	 * "INSERT INTO waybills_table (SEQ_WAYBILL_ID, INVOICE_NO, VENDOR_ID,CATEGORY, TOTAL_VALUE_OF_GOODS, VAT_PERCENT, DISCOUNTS, EXCISE_DUTY, SPECIAL_REBATE, EDUCATIONAL_CESS, CENTRAL_SALES_TAX, SHOP_ID, FREIGHT, INVOICE_DATE) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	 * ; String shopid = "", billid = ""; Statement st = null; try { con =
	 * DBConnection.getConnection(); st = con.createStatement();
	 * 
	 * shopid = getUserShopDetails(waybill.getSHOP_ID()); //
	 * pst2=con.prepareStatement(wquery2);//12
	 * 
	 * waybill.setSEQ_WAYBILL(new IdGen().getId("SEQ_WAYBILL_ID")); //
	 * pst2.setInt(1, waybill.getSEQ_WAYBILL_ID()); int k = st.executeUpdate(
	 * "INSERT INTO waybills_table (SEQ_WAYBILL_ID, INVOICE_NO, VENDOR_ID,CATEGORY, TOTAL_VALUE_OF_GOODS, VAT_PERCENT, DISCOUNTS, EXCISE_DUTY, SPECIAL_REBATE, EDUCATIONAL_CESS, CENTRAL_SALES_TAX, SHOP_ID, FREIGHT, INVOICE_DATE) VALUES"
	 * + " ('" + waybill.getSEQ_WAYBILL_ID() + "', '" +
	 * getValue(waybill.getINVOICE_NO()) + "', '" +
	 * getValue(waybill.getVENDOR_ID()) + "', '" +
	 * getValue(waybill.getCATEGORY()) + "', '" +
	 * getValue(waybill.getTOTAL_VALUE_OF_GOODS()) + "', '" +
	 * getValue(waybill.getVAT_PERCENT()) + "', '" +
	 * getValue(waybill.getDISCOUNTS()) + "', '" +
	 * getValue(waybill.getEXCISE_DUTY()) + "', '" +
	 * getValue(waybill.getSPECIAL_REBATE()) + "', '" +
	 * getValue(waybill.getEDUCATIONAL_CESS()) + "', '" +
	 * getValue(waybill.getCENTRAL_SALES_TAX()) + "','" + shopid + "', '" +
	 * getValue(waybill.getFREIGHT()) + "', '" + new
	 * SQLDate().getSQLDate(waybill.getINVOICE_DATE()) + "')"); /*
	 * pst2.setString(2, getValue(waybill.getINVOICE_NO())); pst2.setString(3,
	 * getValue(waybill.getVENDOR_ID())); pst2.setString(4,
	 * getValue(waybill.getCATEGORY())); pst2.setString(5,
	 * getValue(waybill.getTOTAL_VALUE_OF_GOODS())); pst2.setString(6,
	 * getValue(waybill.getVAT_PERCENT())); pst2.setString(7,
	 * getValue(waybill.getDISCOUNTS())); pst2.setString(8,
	 * getValue(waybill.getEXCISE_DUTY())); pst2.setString(9,
	 * getValue(waybill.getSPECIAL_REBATE())); pst2.setString(10,
	 * getValue(waybill.getEDUCATIONAL_CESS())); pst2.setString(11,
	 * getValue(waybill.getCENTRAL_SALES_TAX())); pst2.setString(12, shopid);
	 * pst2.setString(13, getValue(waybill.getFREIGHT())); pst2.setString(14,
	 * new SQLDate().getSQLDate(waybill.getINVOICE_DATE()));
	 */
	// int i=pst2.executeUpdate();
	/*
	 * if (k > 0) { b = true; } } catch (Exception e) { } finally { try {
	 * con.close(); } catch (Exception ee) { ee.printStackTrace(); } } return b;
	 * }
	 * 
	 * public boolean checkInvoice(WayBills waybill) throws VendorException {
	 * boolean b = false; Statement st = null; ResultSet rs = null; String
	 * dateformat = new SQLDate().getSQLDate(waybill.getINVOICE_DATE()); String
	 * query = ("SELECT * FROM waybills_table where VENDOR_ID='" +
	 * waybill.getVENDOR_ID() + "' and " + "INVOICE_NO='" +
	 * waybill.getINVOICE_NO() + "' and CATEGORY='" + waybill.getCATEGORY() +
	 * "' and INVOICE_DATE='" + dateformat + "'"); try { con =
	 * DBConnection.getConnection(); st = con.createStatement(); rs =
	 * st.executeQuery(query); if (rs.next()) { b = true; }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally { try {
	 * con.close(); st.close(); rs.close(); } catch (Exception e) {
	 * e.printStackTrace(); } } return b; }
	 * 
	 * /* public ArrayList<WayBills> getInvoiceDetails(String invoiceno)throws
	 * VendorException { ArrayList<WayBills> wal=new ArrayList<WayBills>();
	 * String query="select * from waybills_table where INVOICE_NO = '"
	 * +invoiceno+"'"; try { wal=getWayBills(query); }catch(Exception e) {
	 * e.printStackTrace(); }finally { try {
	 * 
	 * }catch(Exception e) { e.printStackTrace(); } } return wal; }
	 * 
	 * private ArrayList<WayBills> getWayBills(String query) {
	 * ArrayList<WayBills> wal=new ArrayList<WayBills>(); Statement st=null;
	 * ResultSet rs=null; try { con=DBConnection.getConnection();
	 * st=con.createStatement(); rs=st.executeQuery(query);
	 * 
	 * while(rs.next()) { WayBills w=new WayBills();
	 * w.setSEQ_WAYBILL(Integer.parseInt(rs.getString("SEQ_WAYBILL_ID")));
	 * w.setINVOICE_NO(rs.getString("INVOICE_NO"));
	 * w.setVENDOR_ID(rs.getString("VENDOR_ID"));
	 * w.setTOTAL_VALUE_OF_GOODS(rs.getString("TOTAL_VALUE_OF_GOODS"));
	 * w.setVAT_PERCENT(rs.getString("VAT_PERCENT"));
	 * w.setDISCOUNTS(rs.getString("DISCOUNTS"));
	 * w.setEXCISE_DUTY(rs.getString("EXCISE_DUTY"));
	 * w.setSPECIAL_REBATE(rs.getString("SPECIAL_REBATE"));
	 * w.setEDUCATIONAL_CESS(rs.getString("EDUCATIONAL_CESS"));
	 * w.setCENTRAL_SALES_TAX(rs.getString("CENTRAL_SALES_TAX"));
	 * w.setFREIGHT(rs.getString("FREIGHT"));
	 * w.setINVOICE_DATE(rs.getString("INVOICE_DATE")); wal.add(w); } }
	 * catch(Exception e) { e.printStackTrace(); }finally { try { con.close();
	 * st.close(); rs.close(); } catch(Exception e) { e.printStackTrace(); } }
	 * 
	 * return wal; }
	 */
	/*
	 * private ArrayList<WayBills> getWayBillDetails(String query) {
	 * ArrayList<WayBills> wbal = new ArrayList<WayBills>(); Statement st =
	 * null; ResultSet rs = null; try { con = DBConnection.getConnection(); st =
	 * con.createStatement(); rs = st.executeQuery(query); while (rs.next()) {
	 * WayBills wb = new WayBills();
	 * wb.setSEQ_WAYBILL(rs.getInt("SEQ_WAYBILL_ID"));
	 * wb.setINVOICE_NO(rs.getString("INVOICE_NO"));
	 * wb.setVENDOR_ID(rs.getString("VENDOR_ID"));
	 * wb.setTOTAL_VALUE_OF_GOODS(rs.getString("TOTAL_VALUE_OF_GOODS"));
	 * wb.setVAT_PERCENT(rs.getString("VAT_PERCENT"));
	 * wb.setDISCOUNTS(rs.getString("DISCOUNTS"));
	 * wb.setEXCISE_DUTY(rs.getString("EXCISE_DUTY"));
	 * wb.setSPECIAL_REBATE(rs.getString("SPECIAL_REBATE"));
	 * wb.setEDUCATIONAL_CESS(rs.getString("EDUCATIONAL_CESS"));
	 * wb.setCENTRAL_SALES_TAX(rs.getString("CENTRAL_SALES_TAX"));
	 * wb.setFREIGHT(rs.getString("FREIGHT"));
	 * wb.setINVOICE_DATE(rs.getString("INVOICE_DATE"));
	 * 
	 * wbal.add(wb); } } catch (Exception e) { e.printStackTrace(); } finally {
	 * try {
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } } return wbal; }
	 * 
	 * public ArrayList<Vendor> viewVendorByName(String vendorname, String
	 * tinno, String shopid) throws VendorException { ArrayList<Vendor> al = new
	 * ArrayList<Vendor>();
	 * 
	 * String query = null; try { query =
	 * "SELECT * FROM vendor_table vt inner join shop_details sd on vt.SHOP_ID=sd.SHOP_ID  having vt.SHOP_ID='"
	 * + shopid + "' and vt.VENDOR_NAME like '%" + vendorname +
	 * "%' or vt.SHOP_ID='" + shopid + "' and tin_no = '" + tinno + "'";
	 * 
	 * al = getVendorDetailsByName(query); } catch (Exception e) {
	 * e.printStackTrace(); } return al; }
	 * 
	 * public ArrayList<Vendor> viewVendorByName(String vendorname, String
	 * tinno) throws VendorException { ArrayList<Vendor> al = new
	 * ArrayList<Vendor>();
	 * 
	 * String query = null; try { query =
	 * "SELECT * FROM vendor_table vt inner join shop_details sd on vt.SHOP_ID=sd.SHOP_ID inner join user_login ul on sd.REFERENCE_ID=ul.REFERENCE_ID where ul.USER_TYPE='ADMIN' and vt.VENDOR_NAME like '%"
	 * + vendorname + "%' or vt.tin_no = '" + tinno + "'"; // SELECT * FROM
	 * vendor_table having VENDOR_NAME = 'Sri Venkateswara // Fertilisers' order
	 * by tin_no = '111111' al = getVendorDetailsByName(query); } catch
	 * (Exception e) { e.printStackTrace(); } return al; }
	 * 
	 * public ArrayList<Vendor> viewVendorByInvoiceno(String invoiceno, String
	 * tinno) throws VendorException { ArrayList<Vendor> al = new
	 * ArrayList<Vendor>();
	 * 
	 * String query = null; try { query =
	 * "SELECT  vt.*, wt.vendor_id from vendor_table vt join waybills_table wt on vt.SEQ_VENDOR_ID=wt.VENDOR_ID where wt.INVOICE_NO like '"
	 * + invoiceno + "' and vt.TIN_NO like '" + tinno + "'"; // SELECT * FROM
	 * vendor_table having VENDOR_NAME = 'Sri Venkateswara // Fertilisers' order
	 * by tin_no = '111111'
	 * 
	 * al = getVendorDetailsByName(query); } catch (Exception e) {
	 * e.printStackTrace(); } finally { try { con.close(); } catch (Exception e)
	 * { // TODO Auto-generated catch block e.printStackTrace(); } } return al;
	 * }
	 * 
	 * private ArrayList<Vendor> getVendorDetailsByName(String query) {
	 * 
	 * ArrayList<Vendor> al = new ArrayList<Vendor>();
	 * 
	 * Statement stmt = null; ResultSet rs = null; try { con =
	 * DBConnection.getConnection(); stmt = con.createStatement();
	 * 
	 * rs = stmt.executeQuery(query); while (rs.next()) { Vendor vendor = new
	 * Vendor(); vendor.setVENDOR_ID(rs.getString("SEQ_VENDOR_ID"));
	 * vendor.setVENDOR_NAME(rs.getString("VENDOR_NAME"));
	 * vendor.setADDRESS(rs.getString("ADDRESS"));
	 * vendor.setTIN_NO(rs.getString("TIN_NO"));
	 * vendor.setPAN_NO(rs.getString("PAN_NO"));
	 * vendor.setCST_NO(rs.getString("CST_NO"));
	 * vendor.setLICENSE_NO(rs.getString("LICENSE_NO"));
	 * vendor.setPHONE_NO1(rs.getString("PHONE_NO1"));
	 * vendor.setPHONE_NO2(rs.getString("PHONE_NO2"));
	 * vendor.setBANK_NAME(rs.getString("BANK_NAME"));
	 * vendor.setACCOUNT_NO(rs.getString("ACCOUNT_NO"));
	 * vendor.setIFSC_CODE(rs.getString("IFSC_CODE"));
	 * vendor.setSHOP_ID(rs.getString("SHOP_ID"));
	 * 
	 * al.add(vendor); }
	 * 
	 * } catch (SQLException e) { e.printStackTrace(); } finally { try {
	 * rs.close(); stmt.close(); con.close(); } catch (Exception e) { // TODO
	 * Auto-generated catch block e.printStackTrace(); } } return al; }
	 * 
	 * private String getShopId(String empid) throws ShopException { String
	 * shopid = ""; try { con = DBConnection.getConnection(); Statement st =
	 * con.createStatement(); ResultSet rs = st.executeQuery(
	 * "SELECT shop_id FROM employee_details where employee_id = '" + empid +
	 * "'"); if (rs.next()) { shopid = rs.getString("SHOP_ID"); } } catch
	 * (Exception e) { e.printStackTrace(); } return shopid; }
	 * 
	 * public ArrayList<Vendor> getVendorAllDetails(String vendorid) throws
	 * VendorException { Statement st = null; ResultSet rs = null;
	 * ArrayList<Vendor> al = new ArrayList<Vendor>(); HashMap<String, String>
	 * chm = new ShopHM().getShopName(); String query =
	 * "select * from vendor_table where SEQ_VENDOR_ID= '" + vendorid + "'"; try
	 * { con = DBConnection.getConnection(); st = con.createStatement();
	 * 
	 * rs = st.executeQuery(query); while (rs.next()) { Vendor v = new Vendor();
	 * v.setVENDOR_ID(rs.getString("SEQ_VENDOR_ID"));
	 * v.setVENDOR_NAME(rs.getString("VENDOR_NAME"));
	 * v.setADDRESS(rs.getString("ADDRESS"));
	 * v.setTIN_NO(rs.getString("TIN_NO")); v.setPAN_NO(rs.getString("PAN_NO"));
	 * v.setCST_NO(rs.getString("CST_NO"));
	 * v.setLICENSE_NO(rs.getString("LICENSE_NO"));
	 * v.setPHONE_NO1(rs.getString("PHONE_NO1"));
	 * v.setPHONE_NO2(rs.getString("PHONE_NO2"));
	 * v.setACCOUNT_NO(rs.getString("ACCOUNT_NO"));
	 * v.setBANK_NAME(rs.getString("BANK_NAME"));
	 * v.setIFSC_CODE(rs.getString("IFSC_CODE"));
	 * v.setSHOP_ID(chm.get(rs.getString("SHOP_ID"))); al.add(v); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally { try {
	 * con.close(); st.close(); rs.close(); } catch (Exception ee) {
	 * ee.printStackTrace(); } } return al; }
	 * 
	 * public String getUserShopDetails(String userid) throws VendorException {
	 * Statement stmt = null; ResultSet rs = null;
	 * 
	 * String query =
	 * "SELECT sh.shop_id FROM shop_details sh inner join user_register_table emp on sh.SHOP_ID=emp.SHOP_ID where emp.SEQ_REGISTER_ID='"
	 * + userid + "'"; String shopid = "";
	 * 
	 * try { con = DBConnection.getConnection(); stmt = con.createStatement();
	 * rs = stmt.executeQuery(query); if (rs.next()) { shopid =
	 * rs.getString("SHOP_ID"); } } catch (Exception e) { e.printStackTrace(); }
	 * finally { try { rs.close(); stmt.close(); con.close(); } catch (Exception
	 * e) { // TODO Auto-generated catch block e.printStackTrace(); } }
	 * 
	 * return shopid; }
	 * 
	 * public ArrayList<Vendor> SearchVendorDetails(Vendor v, int offset, int
	 * noOfRecords) throws VendorException { String query =
	 * "SELECT SQL_CALC_FOUND_ROWS * FROM vendor_table where TIN_NO is NOT NULL"
	 * ; ArrayList<Vendor> al = new ArrayList<Vendor>(); if
	 * (!v.getVENDOR_NAME().equals("ALL")) { query += " and VENDOR_NAME like '"
	 * + v.getVENDOR_NAME() + "'"; } else if (!v.getTIN_NO().equals("ALL")) {
	 * query += " and TIN_NO = '" + v.getTIN_NO() + "'"; } query += " limit " +
	 * offset + ", " + noOfRecords; al = getVendorDetailByName(query); return
	 * al; }
	 * 
	 * public ArrayList<Vendor> SearchVendorDetailsById(Vendor v, String shopid,
	 * int offset, int noOfRecords) throws VendorException { String query =
	 * "SELECT SQL_CALC_FOUND_ROWS * FROM vendor_table where TIN_NO is NOT NULL and shop_id='"
	 * + shopid + "'"; ArrayList<Vendor> al = new ArrayList<Vendor>(); if
	 * (!v.getVENDOR_NAME().equals("ALL")) { query += " and VENDOR_NAME like '%"
	 * + v.getVENDOR_NAME() + "%' and shop_id='" + shopid + "'"; } else if
	 * (!v.getTIN_NO().equals("ALL")) { query += " and TIN_NO = '" +
	 * v.getTIN_NO() + "' and shop_id='" + shopid + "'"; } query += " limit " +
	 * offset + ", " + noOfRecords; System.out.println(query); al =
	 * getVendorDetailByName(query); return al; }
	 * 
	 * public int getNoOfRecords() throws VendorException { // TODO
	 * Auto-generated method stub return noOfRecords; }
	 * 
	 * private ArrayList<Vendor> getVendorDetailByName(String query) {
	 * 
	 * ArrayList<Vendor> al = new ArrayList<Vendor>();
	 * 
	 * Statement stmt = null; ResultSet rs = null; try { con =
	 * DBConnection.getConnection(); stmt = con.createStatement();
	 * 
	 * rs = stmt.executeQuery(query); while (rs.next()) { Vendor vendor = new
	 * Vendor(); vendor.setVENDOR_ID(rs.getString("SEQ_VENDOR_ID"));
	 * vendor.setVENDOR_NAME(rs.getString("VENDOR_NAME"));
	 * vendor.setADDRESS(rs.getString("ADDRESS"));
	 * vendor.setTIN_NO(rs.getString("TIN_NO"));
	 * vendor.setPAN_NO(rs.getString("PAN_NO"));
	 * vendor.setCST_NO(rs.getString("CST_NO"));
	 * vendor.setLICENSE_NO(rs.getString("LICENSE_NO"));
	 * vendor.setPHONE_NO1(rs.getString("PHONE_NO1"));
	 * vendor.setPHONE_NO2(rs.getString("PHONE_NO2"));
	 * vendor.setBANK_NAME(rs.getString("BANK_NAME"));
	 * vendor.setACCOUNT_NO(rs.getString("ACCOUNT_NO"));
	 * vendor.setIFSC_CODE(rs.getString("IFSC_CODE"));
	 * vendor.setSHOP_ID(rs.getString("SHOP_ID"));
	 * 
	 * al.add(vendor); } rs.close();
	 * 
	 * rs = stmt.executeQuery("SELECT FOUND_ROWS()"); if (rs.next())
	 * this.noOfRecords = rs.getInt(1);
	 * 
	 * } catch (SQLException e) { e.printStackTrace(); } finally { try {
	 * rs.close(); stmt.close(); con.close(); } catch (Exception e) { // TODO
	 * Auto-generated catch block e.printStackTrace(); } } return al; }
	 * 
	 * public String updateVendorDetails(Vendor vendor) throws VendorException {
	 * 
	 * String message = ""; String query = ""; PreparedStatement pst = null;
	 * 
	 * query =
	 * "UPDATE `vendor_table` SET `vendor_name`=?, `ADDRESS`=?, `tin_no`=?, `pan_no`=?, `cst_no`=?, `LICENSE_NO`=?, `PHONE_NO1`=?, `PHONE_NO2`=?, `BANK_NAME`=?,`ACCOUNT_NO`=?,`IFSC_CODE`=?,`SHOP_ID`=? WHERE `SEQ_VENDOR_ID`=?"
	 * ;
	 * 
	 * try { con = DBConnection.getConnection(); pst =
	 * con.prepareStatement(query);
	 * 
	 * pst.setString(1, vendor.getVENDOR_NAME()); pst.setString(2,
	 * vendor.getADDRESS()); pst.setString(3, vendor.getTIN_NO());
	 * pst.setString(4, vendor.getPAN_NO()); pst.setString(5,
	 * vendor.getCST_NO()); pst.setString(6, vendor.getLICENSE_NO());
	 * pst.setString(7, vendor.getPHONE_NO1()); pst.setString(8,
	 * vendor.getPHONE_NO2()); pst.setString(9, vendor.getBANK_NAME());
	 * pst.setString(10, vendor.getACCOUNT_NO()); pst.setString(11,
	 * vendor.getIFSC_CODE()); pst.setString(12, vendor.getSHOP_ID());
	 * pst.setString(13, vendor.getVENDOR_ID());
	 * 
	 * int i = pst.executeUpdate();
	 * 
	 * if (i > 0) { message = "Vendor Details Updated Successfully.."; } else {
	 * message = "Vendor Details Updation is Failed.. Please Try Again"; } }
	 * catch (Exception e) { e.printStackTrace(); } finally { try { pst.close();
	 * con.close(); } catch (Exception e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } } return message; }
	 */
}
