package com.rxmitra.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rxmitra.bean.Prescription;
import com.rxmitra.bean.PrescriptionManagement;
import com.rxmitra.bean.ReceivedRequest;

@Repository
@Transactional
public class ReceivedRequestDAO {

	@Autowired
	private HibernateTemplate template;

	public List<ReceivedRequest> getReceivedRequestData() {
		List<ReceivedRequest> list = template.loadAll(ReceivedRequest.class);

		return list;
	}

	public ReceivedRequest getReceivedRequestData(String requestId) {
		int i = Integer.parseInt(requestId);
		ReceivedRequest receivedRequest = (ReceivedRequest) template.getSessionFactory().openSession().load(ReceivedRequest.class, i);

		return receivedRequest;
	}

	public PrescriptionManagement getReceivedRequestPrescription(String requestId) {
		int i = Integer.parseInt(requestId);
		String sql="from com.rxmitra.bean.PrescriptionManagement where requestId='"+i+"'";
		Query createQuery = template.getSessionFactory().openSession().createQuery(sql);
		PrescriptionManagement list = (PrescriptionManagement) createQuery.uniqueResult();

		return list;
	}
	
	
	public List<Prescription> getReceivedRequestPrescriptionMedicines(String mngmtId) {
		
		String sql="from com.rxmitra.bean.Prescription where requestId='"+mngmtId+"'";
		Query createQuery = template.getSessionFactory().openSession().createQuery(sql);
		List<Prescription> list = createQuery.list();

		return list;
	}
     public String deletePrescriptionData(Integer prescriptionId) {
    	 String s="";
		Prescription prescription = template.load(Prescription.class, prescriptionId);
		template.delete(prescription);
		s="success";
		return s;
	}
	public Integer lastPreMngmtId() {
		String query = "select max(prescriptionMngmtId) from com.rxmitra.bean.PrescriptionManagement";
		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
          Integer i = (Integer) createQuery.uniqueResult();

		return i;

	}
	public Long getReceivedRequestCount() {
		String query = "select count(*) from com.rxmitra.bean.ReceivedRequest";
		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		Long i = (Long) createQuery.uniqueResult();

		return i;

	}

	public Long getReceivedRequestCount(String fromDate,String toDate,String pincode,String requestId) {
		String query = "select count(*) from com.rxmitra.bean.ReceivedRequest r where (date  between '" + fromDate + "' and '" + toDate+"') or pincode='"+pincode+"' or requestId='"+requestId+"'";
		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		Long i = (Long) createQuery.uniqueResult();

		return i;

	}
	public String savePrescriptionAndDoctorData(PrescriptionManagement preMngmt, List<Prescription> prescription) {

		String message = null;

		Integer i = (Integer) template.save(preMngmt);
		
		int j=0;
		
		for (Prescription prescription2 : prescription) {
			 j = (Integer) template.save(prescription2);
            j++;
		}

		if (i > 0 && j > 0) {
			message = "success";
		} else {
			message = "fail";
		}

		return message;
	}
	
	public String savePrescriptionAndDoctorData(List<Prescription> prescription) {

		String message = null;
		
		int j=0;
		
		for (Prescription prescription2 : prescription) {
			 j = (Integer) template.save(prescription2);
            j++;
		}

		if (j > 0) {
			message = "success";
		} else {
			message = "fail";
		}

		return message;
	}

	public List<ReceivedRequest> viewReceivedRequestsByDates(String fromDate, String toDate, String pincode,
			String requestId) {
		String query = "from com.rxmitra.bean.ReceivedRequest r where (date  between '" + fromDate + "' and '" + toDate
				+ "') or pincode='"+pincode+"' or requestId='"+requestId+"'";
		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		List<ReceivedRequest> list = createQuery.list();

		return list;
	}
	
	public String updateExistingPrescription(PrescriptionManagement prescriptionManagement,List<Prescription> prescriptionMedicines) {
		/*String query = "from com.rxmitra.bean.ReceivedRequest r where (date  between '" + fromDate + "' and '" + toDate
				+ "') or pincode='"+pincode+"' or requestId='"+requestId+"'";
		Query createQuery = template.getSessionFactory().openSession().createQuery(query);
		List<ReceivedRequest> list = createQuery.list();*/
		
		template.update(prescriptionManagement);
        for (Prescription prescription : prescriptionMedicines) {
	       template.update(prescription);
          }
		return "success";
	}

}
