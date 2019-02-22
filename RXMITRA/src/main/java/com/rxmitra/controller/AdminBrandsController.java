package com.rxmitra.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.AdminBrands;
import com.rxmitra.service.AdminBrandsService;

@Controller
@RequestMapping("/")
public class AdminBrandsController {

	
	@Autowired
	private AdminBrandsService adminBrandsService;
	
	@RequestMapping(value="addAdminBrands",method=RequestMethod.POST)
	public ModelAndView adminBrands(AdminBrands adminBrands,Model model) {
		ModelAndView mav=null;
		int i = adminBrandsService.adminBrands(adminBrands);
		if(i>0) {
			mav=new ModelAndView("AdminSubmitBrands","success","Brands submitted Successfully..");
		}else {
			mav=new ModelAndView("AdminSubmitBrands","failure","Brands  are not submitted please check again..");
		}
		return mav;
	}
}
