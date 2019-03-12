package com.rxmitra.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
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

	public List<String> getAdminCategory() {
		
		String sql = "select a.category from com.rxmitra.bean.AdminBrands a";
		Query createQuery = template.getSessionFactory().openSession().createQuery(sql);
		@SuppressWarnings("unchecked")
		ArrayList<String> list2 = (ArrayList<String>) createQuery.list();
		
		return list2;
	}

	@SuppressWarnings("unchecked")
	public List<String> getAdminBrands(String category) {
		List<String> list=null;
		if(category.equals("All")) {
			String sql = "select a.brandName from com.rxmitra.bean.AdminBrands a";
			Query createQuery = template.getSessionFactory().openSession().createQuery(sql);
			list = createQuery.list();
		}else {
		String sql = "select a.brandName from com.rxmitra.bean.AdminBrands a where a.category='" + category + "'";
		Query createQuery = template.getSessionFactory().openSession().createQuery(sql);
		 list = createQuery.list();
		}
		return list;
	}
	
	public List<AdminBrands> viewAdminBrands() {
		List<AdminBrands> list = template.loadAll(AdminBrands.class);
		
		return list;
	}
}
