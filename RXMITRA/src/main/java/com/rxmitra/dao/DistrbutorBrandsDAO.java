package com.rxmitra.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rxmitra.bean.DistributorBrands;

@Repository
@Transactional
public class DistrbutorBrandsDAO {
	
	
	@Autowired
	private HibernateTemplate template;
	
	public int addDistributorBrands(DistributorBrands distributorBrands) {
		int i = (Integer) template.save(distributorBrands);
		return i;
	}

}
