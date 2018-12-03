package com.rxmitra.dao;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rxmitra.bean.DeliverAddress;

@Repository
@Transactional
public class DeliverAddressDAO {
	
	@Autowired
	private HibernateTemplate template;
	
	public String addDeliverAddress(DeliverAddress deliverAddress) {
		String message=null;
		int i = (Integer) template.save(deliverAddress);
		if(i>0) {
			message="success";
		}else {
			message="fail";
		}
		return message;
	}

}
