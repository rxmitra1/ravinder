package com.rxmitra.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.DistributorBrands;
import com.rxmitra.service.DistributorBrandsService;

@Controller
@RequestMapping("/")
public class DistributorBrandsController {

	@Autowired
	private DistributorBrandsService distributorBrandsService;
	
	@RequestMapping(value="addDistributorBrands",method=RequestMethod.POST)
	public ModelAndView addDistributorBrands(DistributorBrands distributorBrands,Model model,HttpSession session) {
		ModelAndView mav=null;
		
		int userId = Integer.parseInt((String) session.getAttribute("referenceId"));
        distributorBrands.setDistributorId(userId);
		int i = distributorBrandsService.addDistributorBrands(distributorBrands);
		if(i>0) {
			mav=new ModelAndView("ServingBrandsInDistributor","success","Brands submitted Successfully..");
		}else {
			mav=new ModelAndView("ServingBrandsInDistributor","failure","Brands  are not submitted please check again..");
		}
		return mav;
	}
}
