package com.rxmitra.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.UserRegistration;
import com.rxmitra.dao.SearchMngmtInRetailerDAO;

@Service
public class SearchMngmtInRetailerService {
	
	@Autowired
	private SearchMngmtInRetailerDAO dao;

	public List<UserRegistration> searchByDistributor(String category,String brandName,String state){
		
		List<UserRegistration> list = dao.searchByDistributor(category, brandName, state);
		
		return list;
	}
	
	
	
}
