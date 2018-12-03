package com.rxmitra.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.Product;
import com.rxmitra.bean.VendorProduct;
import com.rxmitra.dao.ProductDAOImpl;

@Service
public class ProductService {

	@Autowired
	private ProductDAOImpl dao;
	
	public int insertProduct(Product product){
		//product.setSEQ_PRODUCT_ID(12);
		int i=dao.insertProduct(product);
		return i;
	}
	
	public List<VendorProduct> displayProducts(){
		//product.setSEQ_PRODUCT_ID(12);
		List<VendorProduct> displayProducts = dao.displayProducts();
		return displayProducts;
	}
}
