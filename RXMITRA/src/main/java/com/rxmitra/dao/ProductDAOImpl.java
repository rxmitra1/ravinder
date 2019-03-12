package com.rxmitra.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rxmitra.bean.Product;
import com.rxmitra.bean.VendorProduct;

@Repository
@Transactional
public class ProductDAOImpl {

	@Autowired
	private HibernateTemplate template;

	public int insertProduct(Product product) {

		int i = (Integer) template.save(product);
		return i;
	}

	public List<VendorProduct> displayProducts() {
		List<VendorProduct> list = template.loadAll(VendorProduct.class);

		return list;

	}

	public Product getRecord(String name) {

		Query query = template.getSessionFactory().openSession()
				.createQuery("from Product where productname='" + name + "'");
		System.out.println(query);
		Product object = (Product) query.uniqueResult();

		return object;
	}
}
