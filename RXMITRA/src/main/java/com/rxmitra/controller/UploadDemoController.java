package com.rxmitra.controller;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.UploadDemo;

@Controller
@RequestMapping("/")
public class UploadDemoController {
	
	
	@Autowired
	private HibernateTemplate template;
	
	
	@RequestMapping(path = "/uploadExcelDemo", method = RequestMethod.GET)
	public ModelAndView getUploadDemo() {
		System.out.println("gjug,jkugkkj;o=======================================================");
		UploadDemo demo = template.get(UploadDemo.class, 1);
		byte[] bs = Base64.encodeBase64(demo.getDemoImage());
		String encodedString = new String(bs);
		ModelAndView mav=null;
		return mav;
	}

}
