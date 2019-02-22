package com.rxmitra.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.DistributorBrands;
import com.rxmitra.dao.DistrbutorBrandsDAO;

@Service
public class DistributorBrandsService {
	
	
	@Autowired
	private DistrbutorBrandsDAO distrbutorBrandsDAO;

	
	
	public int addDistributorBrands(DistributorBrands distributorBrands) {
		int i = distrbutorBrandsDAO.addDistributorBrands(distributorBrands);
		return i;
	}
}
