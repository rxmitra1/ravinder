package com.rxmitra.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.AdminBrands;
import com.rxmitra.dao.AdminBrandsDAO;

@Service
public class AdminBrandsService {
	
	@Autowired
	private AdminBrandsDAO adminBrandsDAO;
	
	@Autowired
	private HibernateTemplate template;
	
	public int adminBrands(AdminBrands adminBrands) {
		int i = adminBrandsDAO.adminBrands(adminBrands);
		return i;
	}

	public List<String> getAdminCategory() {
		System.out.println("AMAR");

		List<String> list = adminBrandsDAO.getAdminCategory();
		System.out.println(list);
		return list;
	}
	
	public List<String> getAdminBrands(String category) {
		List<String> list = adminBrandsDAO.getAdminBrands(category);
		return list;
	}
	
	public List<AdminBrands> viewAdminBrands() {
		List<AdminBrands> list = adminBrandsDAO.viewAdminBrands();
		
		return list;
	}
}
