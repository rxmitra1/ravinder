package com.rxmitra.controller;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
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
	public ModelAndView getUploadDemo() {
		
		
		UploadDemo demo = template.get(UploadDemo.class, 1);
		byte[] bs = Base64.encodeBase64(demo.getDemoImage());
		String encodedString = new String(bs);
		
		
		
		/*String imageUrl = "https://www.instagram.com/p/BuA89VxBqLA/";
        String destinationFilePath = "E:\\test.jpg"; // For windows something like c:\\path\to\file\test.jpg

        InputStream inputStream = null;
        try {
            inputStream = new URL(imageUrl).openStream();
            Files.copy(inputStream, Paths.get(destinationFilePath));
        } catch (IOException e) {
            System.out.println("Exception Occurred " + e);
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    // Ignore
                }
            }
        }*/
		
		
		
		ModelAndView mav=new ModelAndView("uploadProductsFromExcel","encodedString",encodedString);
		return mav;
	}

}
