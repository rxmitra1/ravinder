package com.rxmitra.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.DeliverAddress;
import com.rxmitra.dao.DeliverAddressDAO;

@Service
public class DeliverAddressService {
	
   @Autowired
   private DeliverAddressDAO deliverdao;
   
   public String addDeliverAddress(DeliverAddress deliverAddress) {
	 String message = deliverdao.addDeliverAddress(deliverAddress);
	 return message;
   }

}
