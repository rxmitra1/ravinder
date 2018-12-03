package com.rxmitra.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.DeliverAddress;
import com.rxmitra.service.DeliverAddressService;

@Controller
@RequestMapping("/")
public class DeliverAddressController {
	
	
	@Autowired
	private DeliverAddressService deliverService;
	
	@RequestMapping(path="/addDeliverAddress",method=RequestMethod.POST)
	public ModelAndView addDeliverAddress(DeliverAddress delierAddress,Model model) {
		ModelAndView mav=null;
		String message = deliverService.addDeliverAddress(delierAddress);
		
		if(message!=null) {
			model.addAttribute("deliverAddressSuccess", "Your Delivering Address is Uploaded Successfully...");
			mav=new ModelAndView("deliverAddress","deliverAddress",delierAddress);
		}else {
			model.addAttribute("deliverAddressFailure", "Your Delivering Address is Not Uploaded...");
			mav=new ModelAndView("deliverAddress","deliverAddress",delierAddress);
		}
		return mav;
	}

}
