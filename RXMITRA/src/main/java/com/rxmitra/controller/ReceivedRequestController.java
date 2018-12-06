package com.rxmitra.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.Prescription;
import com.rxmitra.bean.PrescriptionManagement;
import com.rxmitra.bean.ReceivedRequest;
import com.rxmitra.service.ReceivedRequestService;

@Controller
public class ReceivedRequestController {

	@Autowired
	private ReceivedRequestService reqService;

	@RequestMapping(path = "/getReceivedRequestData", method = RequestMethod.GET)
	public ModelAndView getReceivedRequestData(Model model) {

		ModelAndView mav = null;
      List<String> al=new ArrayList<String>();
		List<ReceivedRequest> list = reqService.getReceivedRequestData();

		if (list.size() > 0) {
			
			
			
			for (ReceivedRequest receivedRequest : list) {
				byte[] bs = Base64.encodeBase64(receivedRequest.getPhoto());
				 String encodedString = new String(bs);
				 al.add(encodedString);
			}
			/* byte[] bs = Base64.encodeBase64(list.get(0).getPhoto());
			 String encodedString = new String(bs);*/

			    model.addAttribute("userImage", al);
			    
			mav = new ModelAndView("ReceivedRequest", "receivedRequestData", list);
			
			
		} else {
			mav = new ModelAndView("emptyReceivedRequest", "emptyReceivedRequest", "Data is Not Found...");
		}

		return mav;
	}
	
	
	@RequestMapping(path = "/savePrescriptionAndDoctorData", method = RequestMethod.POST)
	public ModelAndView savePrescriptionAndDoctorData(PrescriptionManagement preMngmt,Prescription prescription,Model model) {

		ModelAndView mav = null;

	    String message = reqService.savePrescriptionAndDoctorData(preMngmt,prescription);

	    if (message.equals("success")) {
			model.addAttribute("prescription", prescription);
			mav = new ModelAndView("ReceivedRequest", "preMngmt",preMngmt );
			
			
		} else {
			//mav = new ModelAndView("emptyReceivedRequest", "emptyReceivedRequest", "Data is Not Found...");
		}
		
		

		return mav;
	}
	
	

}
