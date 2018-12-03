package com.rxmitra.controller;

import java.util.ArrayList;
import java.util.List;

import javax.management.AttributeValueExp;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.Product;
import com.rxmitra.bean.Vendor;
import com.rxmitra.bean.VendorProduct;
import com.rxmitra.service.VendorService;

@Controller
@RequestMapping("/")
public class VendorProductController {

	@Autowired
	private VendorService service;

	@RequestMapping(value = "/vendorProductFields", method = RequestMethod.GET)
	public ModelAndView addVendorProductGet(Integer vendorid, VendorProduct vendorProduct,
			Vendor vendor, Model model) {

		Vendor vendor2 = service.getVendor(vendor, vendorid);
		List<VendorProduct> list = service.displayProducts();
		model.addAttribute("vendorDetails", vendor2);
		model.addAttribute("vendorProducts", list);
		//model.addAttribute("category", category);
		return new ModelAndView("ViewVendorToAddProducts");
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/insertVendorProducts", method = RequestMethod.POST)
	public ModelAndView addVendorProduct(HttpServletRequest request, HttpServletResponse response, Integer vendorid,
			VendorProduct vendorProduct, Vendor vendor, Model model) {
		ModelAndView mav = null;
		HttpSession hs = request.getSession();

		ArrayList<VendorProduct> alp = new ArrayList<VendorProduct>();
		ArrayList<VendorProduct> alp1 = new ArrayList<VendorProduct>();

		String companyName = request.getParameter("companyName");
		String category = request.getParameter("category");
		vendorProduct.setCategory(category);
		vendorProduct.setWeight(request.getParameter("weight") + "" + request.getParameter("weightmass"));
		String submit = request.getParameter("submit");
		vendorProduct.setVendorId(vendorid.toString());
		// String vendorid = request.getParameter("vendorid");

		// boolean b = false;

		alp1 = (ArrayList<VendorProduct>) hs.getAttribute("productdetails");
		if (alp1 == null) {
		} else {
			alp = alp1;
		}

		if (companyName.equals("") || companyName == null) {

		} else {
			alp.add(vendorProduct);
			// alp.add(vendorProduct);
		}
		if (submit.equals("ADD PRODUCT")) {
			Vendor vendor2 = service.getVendor(vendor, vendorid);
			List<VendorProduct> list = service.displayProducts();

			model.addAttribute("vendorProducts", list);
			model.addAttribute("vendorDetails", vendor2);
			hs.setAttribute("productdetails", alp);
			// v = (Vendor) hs.getAttribute("vendordetails");
			model.addAttribute("vendorid", vendorid);
			model.addAttribute("category", category);
			mav = new ModelAndView("ViewVendorToAddProducts");

		} else if (submit.equals("SUBMIT ALL")) {
			int i = service.addVendorProducts(alp);
			// alp1=pda.displayVendorProducts(p.getVENDOR_ID());
			if (i > 0) {
				model.addAttribute("message1", "VendorProducts Inserted Successfully....");

				Vendor vendor2 = service.getVendor(vendor, vendorid);
				List<VendorProduct> list = service.displayProducts();

				model.addAttribute("vendorProducts", list);
				model.addAttribute("vendorDetails", vendor2);
				hs.setAttribute("productdetails", alp);
				// request.setAttribute("vendordetails", v);
				request.setAttribute("vendorid", vendorid);
				request.setAttribute("category", category);
				hs.removeAttribute("productdetails");
				mav = new ModelAndView("ViewVendorToAddProducts");
			} else {
				model.addAttribute("message2", "Products Insert Failed....Please Try Again");
				mav = new ModelAndView("ViewVendorToAddProducts");
				request.setAttribute("productdetails", alp);
				// request.setAttribute("vendordetails", v);
				request.setAttribute("vendorid", vendorid);
				request.setAttribute("category", category);
				hs.removeAttribute("productdetails");

			}
		}

		return mav;

	}

	@RequestMapping(path = "/displayVendorProducts", method = RequestMethod.GET)
	public ModelAndView displayProducts(HttpServletRequest request, Model model,HttpSession session) {
		ModelAndView mav = null;
		int total = 5;
		int pageid = Integer.parseInt(request.getParameter("pageid"));
		String vendorname = request.getParameter("vendorname");
		String refId = (String) session.getAttribute("referenceId");
		if (pageid == 1) {
		} else {
			pageid = (pageid - 1) * total + 1;
		}
		if (vendorname == "") {
			List<VendorProduct> displayProducts = service.displayVendorProducts(pageid, total);
			mav = new ModelAndView("DisplayVendorProducts", "vendorProductList", displayProducts);
		} else {
			
			Vendor vendor = service.getVendor(vendorname,refId);
			if (vendor!=null) {
				List<VendorProduct> displayProducts = service.displayVendorProducts(vendorname,refId, pageid, total);
				model.addAttribute("vendorname", vendorname);
				mav = new ModelAndView("DisplayVendorProducts", "vendorProductList", displayProducts);
			} else {
				model.addAttribute("vendorname", vendorname);
				mav = new ModelAndView("ViewProductsByVendorName", "validNameError", "Please Enter the Valid Name...");
			}

		}

		return mav;

	}
}
