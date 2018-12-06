package com.rxmitra.dao;

import java.util.List;

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
	
	
	public List<ReceivedRequest> getReceivedRequestData(){
		List<ReceivedRequest> list = template.loadAll(ReceivedRequest.class);
		
		return list;
	}
	
	
	public String  savePrescriptionAndDoctorData(PrescriptionManagement preMngmt,Prescription prescription) {
	
		String message=null;
		
		Integer i =  (Integer) template.save(preMngmt);
	    Integer j = (Integer) template.save(prescription);
		
	    
	    if(i>0 && j>0) {
	    	message="success";
	    }else {
	    	message="fail";
	    }
		
		return message;
	}
	
	
}
