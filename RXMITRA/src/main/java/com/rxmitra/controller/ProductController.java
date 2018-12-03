package com.rxmitra.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.Product;
import com.rxmitra.bean.VendorProduct;
import com.rxmitra.dao.ProductDAOImpl;
import com.rxmitra.service.ProductService;

@Controller
@RequestMapping("/")
public class ProductController {

	@Autowired
	private ProductService service;

	@Autowired
	private ProductDAOImpl dao;

	@RequestMapping(path = "/AddProduct", method = RequestMethod.GET)
	public ModelAndView addProduct(HttpServletRequest request, Product product, Model model) {
		ModelAndView mav = null;
		System.out.println(product);
		mav = new ModelAndView("AddProduct1");

		return mav;

	}

	@RequestMapping(path = "/AddProductProcess", method = RequestMethod.POST)
	public ModelAndView insertProduct(HttpServletRequest request, Product product, Model model) throws ParseException {
		String submit = request.getParameter("submit");

		/*
		 * String date1 = request.getParameter("EXPIRY_DATE"); String date2 =
		 * request.getParameter("MANUFACTURE_DATE"); SimpleDateFormat format =
		 * new SimpleDateFormat("yyyy-MM-dd"); Date date = format.parse(date1);
		 * Date date3 = format.parse( product.setEXPIRY_DATE(date);
		 * product.setMANUFACTURE_DATE(date3);
		 */
		String message = null;
		System.out.println(product);
		ModelAndView mav = null;
		System.out.println(product);
		int i = service.insertProduct(product);
		if (i > 0) {
			mav = new ModelAndView("AddProduct1");
			message = "product is successfully inserted........";
		} else {
			message = "product is Not  inserted.Please insert again!!!!!";
			mav = new ModelAndView("AddProduct1");
		}

		model.addAttribute("message", message);

		return mav;

	}

	// VendorProduct display......

	@RequestMapping(path = "/displayProducts", method = RequestMethod.GET)
	public ModelAndView displayProducts(HttpServletRequest request, Product product,
			Model model) {
		ModelAndView mav = null;

		
		List<VendorProduct> displayProducts = service.displayProducts();
		model.addAttribute("vendorProductList", displayProducts);
		mav = new ModelAndView("DisplayVendorProducts");

		return mav;

	}

	@RequestMapping(path = "/getRecord", method = RequestMethod.GET)
	public ModelAndView getRecord(HttpServletRequest request, Product product, Model model) {

		ModelAndView mav = null;
		Product record = dao.getRecord("shd");
		System.out.println(record + "Amaraesnsdra bahubali reddt reddy");
		mav = new ModelAndView("AddProduct1");

		return mav;

	}
}
