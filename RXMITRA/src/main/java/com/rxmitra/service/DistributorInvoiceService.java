package com.rxmitra.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.DistributorInvoice;
import com.rxmitra.dao.DistributorInvoiceDAO;

@Service
public class DistributorInvoiceService {
	
	@Autowired
	private DistributorInvoiceDAO dao;
	
	public int uploadProductFromExcelDistributor(List<DistributorInvoice> lstUser) {
		int i = dao.uploadProductFromExcelDistributor(lstUser);
		return i;
	}

}
