package com.rxmitra.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rxmitra.bean.AdminBrands;

@Repository
@Transactional
public class AdminBrandsDAO {
	
	
	@Autowired
	private HibernateTemplate template;
	
	
	public int adminBrands(AdminBrands adminBrands) {
		
		int i = (Integer) template.save(adminBrands);
		
		return i;
	}

}
