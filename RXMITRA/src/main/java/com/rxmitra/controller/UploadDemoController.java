package com.rxmitra.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.UploadDemo;

@Controller
@RequestMapping("/")
@Transactional
public class UploadDemoController {
	
	
	@Autowired
	private HibernateTemplate template;
	
	
	@RequestMapping(path = "/uploadExcelDemo", method = RequestMethod.GET)
	public ModelAndView getUploadDemo(HttpServletResponse response) {
		
		
		UploadDemo demo = template.get(UploadDemo.class, 1);
		byte[] bs = Base64.encodeBase64(demo.getDemoImage());
		String encodedString = new String(bs);
		
	
		/*String s="Excel Demo";
		//response.setContentType(file.getType());
        response.setContentLength(demo.getDemoImage().length);
        response.setHeader("Content-Disposition","attachment; filename=\"" +s+"\"");
 
        try {
			FileCopyUtils.copy(demo.getDemoImage(), response.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 */
		
		ModelAndView mav=new ModelAndView("uploadProductsFromExcel","encodedString",encodedString);
		return mav;
	}
	
	
	@RequestMapping(path = "/uploadExcelDemoRetailer", method = RequestMethod.GET)
	public ModelAndView getUploadDemoRetailer(HttpServletResponse response) {
		
		
		UploadDemo demo = template.get(UploadDemo.class, 1);
		byte[] bs = Base64.encodeBase64(demo.getDemoImage());
		String encodedString = new String(bs);
		
	
		ModelAndView mav=new ModelAndView("uploadProductsFromExcelRetailer","encodedString",encodedString);
		return mav;
	}
	
	
	
	
	@RequestMapping(path = "/downloadSampleDemo", method = RequestMethod.GET)
	public ModelAndView downloadSampleDemo(HttpServletResponse response) {
		
		
		UploadDemo demo = template.get(UploadDemo.class, 1);
		byte[] bs = Base64.encodeBase64(demo.getDemoImage());
		String encodedString = new String(bs);
		
	
		String s="Excel Demo";
		//response.setContentType(file.getType());
        response.setContentLength(demo.getDemoImage().length);
        response.setHeader("Content-Disposition","attachment; filename=\"" +s+"\"");
 
        try {
			FileCopyUtils.copy(demo.getDemoImage(), response.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 
		
		ModelAndView mav=new ModelAndView("uploadProductsFromExcel","encodedString",encodedString);
		return mav;
	}

}
