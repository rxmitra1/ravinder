package com.rxmitra.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.AddInvoice;
import com.rxmitra.bean.AddInvoice1;
import com.rxmitra.bean.VendorProduct;
import com.rxmitra.service.AddInvoiceService;

@Controller
@RequestMapping("/")
public class AddCartController {

	
	@Autowired
	private AddInvoiceService service;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(path="/addCart",method=RequestMethod.POST)
	public ModelAndView addCart(String price,String productName,Model model,HttpSession session) {
		ModelAndView mav=null;
	
		List<AddInvoice1> addInvoice = new ArrayList<AddInvoice1>();
		List<AddInvoice1> addInvoice1 = new ArrayList<AddInvoice1>();
	    String price1 = price.substring(7);
         String cartQuantity = price.substring(0, 1);
		
		addInvoice1 =(List<AddInvoice1>) session.getAttribute("addCart1");
		

		if (addInvoice1 == null) {
		} else {
			addInvoice = addInvoice1;
		

		}
		if(!productName.equals("")) {
		int count = addInvoice.size();
		AddInvoice1 addInvoice12 = new AddInvoice1();
		addInvoice12.setProductName(productName);
		addInvoice12.setCartPrice(price1);
		addInvoice12.setCartQuantity(cartQuantity);
		addInvoice.add(addInvoice12);
		session.setAttribute("addCart1", addInvoice);

		List<AddInvoice> list = service.getProductDetailsInSearchPage(productName);
		model.addAttribute("price", price);
		//model.addAttribute("count",++count);
		session.setAttribute("count",++count);
		model.addAttribute("productName", productName);
		//model.addAttribute("cartList",addInvoice);
        session.setAttribute("cartList", addInvoice);
        mav = new ModelAndView("search","productDetails",list);
		}
		return mav;
	}
	
	@RequestMapping(path="/cartDisplay",method=RequestMethod.GET)
	public ModelAndView cartDisplay(HttpServletRequest request,Model model,HttpSession session) {
		@SuppressWarnings("unchecked")
		List<AddInvoice1> attribute = (List<AddInvoice1>) session.getAttribute("cartList");
		
		ModelAndView mav=null;
		List<AddInvoice1> list = new ArrayList<AddInvoice1>();
		double totalPrice=0;
		System.out.println(attribute);
		if(attribute!=null && attribute.size()>0) {
		for (AddInvoice1 addInvoice1 : attribute) {
			String cartPrice = addInvoice1.getCartPrice();
		    String cartQuantity = addInvoice1.getCartQuantity();
			totalPrice=totalPrice+Double.parseDouble(cartPrice);	
			addInvoice1.setCartPrice(cartPrice);
			addInvoice1.setCartQuantity(cartQuantity);
			List<AddInvoice> list1 = service.getProductDetailsInSearchPage(addInvoice1.getProductName());
			addInvoice1.setProductName(list1.get(0).getProductName());
			addInvoice1.setPackageType(list1.get(0).getPackageType());
			addInvoice1.setSellingPrice(list1.get(0).getSellingPrice());
			addInvoice1.setManufacturer(list1.get(0).getManufacturer());
			list.add(addInvoice1);
			
		}
		int count=list.size();
		//model.addAttribute("count", count);
		session.setAttribute("count", count);
		model.addAttribute("totalPrice", totalPrice);
		 mav = new ModelAndView("cart","productDetails",list);
			
		}else {
			 mav = new ModelAndView("emptyCart","emptyCart","Your Cart is Empty....");
		}
			
		
		return mav;
	}
	
	@RequestMapping(path="/removeCart",method=RequestMethod.GET)
	public ModelAndView removeCart(HttpServletRequest request,String cartId,Model model,HttpSession session) {
		ModelAndView mav=null;
	
		
		int cartId1 = Integer.parseInt(cartId);
		System.out.println(cartId1);
		List<AddInvoice1> attribute = (List<AddInvoice1>) session.getAttribute("cartList");
        attribute.remove(cartId1);
		
		List<AddInvoice1> list = new ArrayList<AddInvoice1>();
		double totalPrice=0;
		if(attribute.size()>0 &&  attribute!=null) {
		for (AddInvoice1 addInvoice1 : attribute) {
			String cartPrice = addInvoice1.getCartPrice();
		    String cartQuantity = addInvoice1.getCartQuantity();
			totalPrice=totalPrice+Double.parseDouble(cartPrice);	
			addInvoice1.setCartPrice(cartPrice);
			addInvoice1.setCartQuantity(cartQuantity);
			List<AddInvoice> list1 = service.getProductDetailsInSearchPage(addInvoice1.getProductName());
			addInvoice1.setProductName(list1.get(0).getProductName());
			addInvoice1.setPackageType(list1.get(0).getPackageType());
			addInvoice1.setSellingPrice(list1.get(0).getSellingPrice());
			addInvoice1.setManufacturer(list1.get(0).getManufacturer());
			list.add(addInvoice1);
			
		}
		int count=list.size();
		session.setAttribute("count", count);
		model.addAttribute("totalPrice", totalPrice);
		 mav = new ModelAndView("cart","productDetails",list);
			
		}else {
			int count=list.size();
			session.setAttribute("count", count);
			 mav = new ModelAndView("emptyCart","emptyCart","Your Cart is Empty....");
		}
			
	
		return mav;
	}
	
}
