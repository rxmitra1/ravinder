package com.rxmitra.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.AdminBrands;
import com.rxmitra.dao.AdminBrandsDAO;

@Service
public class AdminBrandsService {
	
	@Autowired
	private AdminBrandsDAO adminBrandsDAO;
	
	
	public int adminBrands(AdminBrands adminBrands) {
		int i = adminBrandsDAO.adminBrands(adminBrands);
		return i;
	}

}
