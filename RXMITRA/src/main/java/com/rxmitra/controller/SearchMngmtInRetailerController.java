package com.rxmitra.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.UserRegistration;
import com.rxmitra.service.AdminBrandsService;
import com.rxmitra.service.SearchMngmtInRetailerService;

@Controller
public class SearchMngmtInRetailerController {

	@Autowired
	private SearchMngmtInRetailerService service;
	
	@Autowired
	private AdminBrandsService adminBrandsService;
	
	@RequestMapping(value="SearchByDistributor",method=RequestMethod.POST)
	public ModelAndView searchByDistributor(String category,String brandName,String state,Model model) {
		ModelAndView mav=null;
		
		
		List<UserRegistration> list = service.searchByDistributor(category, brandName, state);
		List<String> adminBrands1 = adminBrandsService.getAdminCategory();
		Set<String> adminBrands=new HashSet<String>(adminBrands1);
		System.out.println(list);
		model.addAttribute("category", category);
		model.addAttribute("brandName", brandName);
		model.addAttribute("state", state);
		model.addAttribute("adminBrands", adminBrands);
		mav=new ModelAndView("DistributorsDetails","distributorDetails",list);
		
		return mav;
	}
}
