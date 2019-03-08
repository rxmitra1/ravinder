package com.rxmitra.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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

	@RequestMapping(value = "addAdminBrands", method = RequestMethod.POST)
	public ModelAndView adminBrands(AdminBrands adminBrands, Model model) {
		ModelAndView mav = null;
		String s = null;
		List<AdminBrands> adminBrands1 = adminBrandsService.viewAdminBrands();
		for (int i = 0; i < adminBrands1.size(); i++) {
			AdminBrands adminBrands2 = adminBrands1.get(i);
			if (adminBrands2.getBrandName().equals(adminBrands.getBrandName()) && adminBrands2.getCategory().equals(adminBrands.getCategory()) && adminBrands2.getSubCategory().equals(adminBrands.getSubCategory())) {
				s = "Exit";
				break;
			} else {
				s = "New";
			}
		}
		if (s.equals("New")) {
			int i = adminBrandsService.adminBrands(adminBrands);
			if (i > 0) {
				model.addAttribute("category", adminBrands.getCategory());
				model.addAttribute("subCategory", adminBrands.getSubCategory());
				model.addAttribute("brandName", adminBrands.getBrandName());
				mav = new ModelAndView("AdminSubmitBrands", "success", "Brands submitted Successfully..");
			} else {
				mav = new ModelAndView("AdminSubmitBrands", "failure",
						"Brands  are not submitted please check again..");
			}
		} else {
			mav = new ModelAndView("AdminSubmitBrands", "Exit", "Brand  are Already Exit..");
		}
		return mav;
	}

	@RequestMapping(value = "getAdminCategory", method = RequestMethod.GET)
	public ModelAndView getAdminCategory(Model model) {
		ModelAndView mav = null;
		List<String> adminBrands = adminBrandsService.getAdminCategory();
		// Set<String> s=new HashSet<String>(adminBrands);
		/*
		 * if(i>0) { mav=new
		 * ModelAndView("AdminSubmitBrands","success","Brands submitted Successfully.."
		 * ); }else { mav=new ModelAndView("AdminSubmitBrands",
		 * "failure","Brands  are not submitted please check again.."); }
		 */
		mav = new ModelAndView("ServingBrandsInDistributor", "adminBrands", adminBrands);
		return mav;
	}

	@RequestMapping(value = "getAdminCategoryInRetailer", method = RequestMethod.GET)
	public ModelAndView getAdminCategoryInRetailer(Model model) {
		ModelAndView mav = null;
		List<String> adminBrands1 = adminBrandsService.getAdminCategory();
		Set<String> adminBrands = new HashSet<String>(adminBrands1);
		// Set<String> s=new HashSet<String>(adminBrands);
		/*
		 * if(i>0) { mav=new
		 * ModelAndView("AdminSubmitBrands","success","Brands submitted Successfully.."
		 * ); }else { mav=new ModelAndView("AdminSubmitBrands",
		 * "failure","Brands  are not submitted please check again.."); }
		 */
		mav = new ModelAndView("SearchByDistributor", "adminBrands", adminBrands);
		return mav;
	}

	@RequestMapping(value = "getAdminBrands", method = RequestMethod.GET)
	public ModelAndView adminBrands(String category, Model model) {
		ModelAndView mav = null;
		List<String> adminBrands = adminBrandsService.getAdminBrands(category);
		Set<String> s = new HashSet<String>(adminBrands);
		/*
		 * if(i>0) { mav=new
		 * ModelAndView("AdminSubmitBrands","success","Brands submitted Successfully.."
		 * ); }else { mav=new ModelAndView("AdminSubmitBrands",
		 * "failure","Brands  are not submitted please check again.."); }
		 */
		  mav=new ModelAndView("getAdminBrands","s",s);

		return mav;
	}

	@RequestMapping(value = "getAdminBrandsInRetailer", method = RequestMethod.GET)
	public ModelAndView getAdminBrands(String category, Model model) {
		ModelAndView mav = null;
		List<String> adminBrands = adminBrandsService.getAdminBrands(category);
		Set<String> s = new HashSet<String>(adminBrands);
		/*
		 * if(i>0) { mav=new
		 * ModelAndView("AdminSubmitBrands","success","Brands submitted Successfully.."
		 * ); }else { mav=new ModelAndView("AdminSubmitBrands",
		 * "failure","Brands  are not submitted please check again.."); }
		 */
		  mav=new ModelAndView("getAdminBrandsInRetailer","s",s);

		return mav;
	}
	
	@RequestMapping(value = "viewAdminBrands", method = RequestMethod.POST)
	public ModelAndView viewAdminBrands(Integer pageid ,Model model) {
		int total = 4;
		ModelAndView mav = null;
		if (pageid == 1) {
		} else {
			pageid = (pageid - 1) * total + 1;
		}
 
		// Pagination
		List<Integer> countpagesList = new ArrayList<Integer>();
		 List<AdminBrands> list = adminBrandsService.viewAdminBrands();
		 int count = list.size();
		if (count > 4) {
			Long countpages = (long) (count / 4);
			for (int i = 1; i <= countpages + 1; i++) {
				countpagesList.add(i);
			}
		} else {
			countpagesList.add(1);
		}

		// End Pagination
	    List<AdminBrands> adminBrands = adminBrandsService.viewAdminBrands();
	    model.addAttribute("count", countpagesList);
		mav = new ModelAndView("ViewAdminBrands", "adminBrands", adminBrands);
		/*
		 * if(i>0) { mav=new
		 * ModelAndView("AdminSubmitBrands","success","Brands submitted Successfully.."
		 * ); }else { mav=new ModelAndView("AdminSubmitBrands",
		 * "failure","Brands  are not submitted please check again.."); }
		 */
		return mav;
	}
}
