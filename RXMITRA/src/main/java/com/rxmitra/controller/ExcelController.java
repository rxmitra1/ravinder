package com.rxmitra.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.rxmitra.bean.Excel;
import com.rxmitra.service.ExcelService;

@Controller
public class ExcelController {

	@Autowired
	private ExcelService service;
	
	@RequestMapping(value = "/processExcel", method = RequestMethod.POST)
	public String processExcel(Model model, @RequestParam("file") MultipartFile file) {		
		try {
			List<Excel> lstUser = new ArrayList<Excel>();
			int i = 1;
			// Creates a workbook object from the uploaded excelfile
			XSSFWorkbook workbook = new XSSFWorkbook(file.getInputStream());
			// Creates a worksheet object representing the first sheet
			XSSFSheet worksheet = workbook.getSheetAt(0);
			// Reads the data in excel file until last row is encountered
			while (i <= worksheet.getLastRowNum()) {
				// Creates an object for the UserInfo Model
				Excel user = new Excel();
				// Creates an object representing a single row in excel
				XSSFRow row = worksheet.getRow(i++);
				// Sets the Read data to the model class
				//user.setId((int) row.getCell(0).getNumericCellValue());
				
				System.out.println(row.getCell(1).getStringCellValue());
				
				
				user.setUsername(row.getCell(1).getStringCellValue());
				/*Date date = row.getCell(2).getDateCellValue();
				 DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
				 String string = dateFormat.format(date);
				 System.out.println(string);*/
				 user.setInputDate(row.getCell(2).getStringCellValue());
				System.out.println(user);
				// persist data into database in here
				lstUser.add(user);
			}			
			workbook.close();
			
			String string = service.updateList(lstUser);
			if(string.equals("success")){
				model.addAttribute("lstUser", lstUser);
				return "Excel";
			}			
		} catch (Exception e) {
			e.printStackTrace();
		}
	 
		return "Excel";
	}
}
