package com.rxmitra.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

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
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.DistributorInvoice;
import com.rxmitra.bean.Vendor;
import com.rxmitra.service.DistributorInvoiceService;
import com.rxmitra.utils.SQLDate;

@Controller
@RequestMapping("/")
public class DistributorInvoiceController {
	
	@Autowired
	private DistributorInvoiceService service;
	
	    @RequestMapping(path = "/uploadProductFromExcelDistributor", method = RequestMethod.POST)
	        public ModelAndView uploadProductFromExcelDistributor(Model model, Integer vendorid, @RequestParam("file") MultipartFile file,
				Vendor vendor, HttpSession session) {
			ModelAndView mav = null;

			int userId = Integer.parseInt((String) session.getAttribute("referenceId"));

			List<DistributorInvoice> lstUser = new ArrayList<DistributorInvoice>();
			try {

				int i = 1;
				// Creates a workbook object from the uploaded excelfile
				XSSFWorkbook workbook = new XSSFWorkbook(file.getInputStream());
				// Creates a worksheet object representing the first sheet
				XSSFSheet worksheet = workbook.getSheetAt(0);
				// Reads the data in excel file until last row is encountered
				while (i <= worksheet.getLastRowNum()) {
					// Creates an object for the UserInfo Model
					DistributorInvoice addInvoice = new DistributorInvoice();
					// Creates an object representing a single row in excel
					XSSFRow row = worksheet.getRow(i++);
					// Sets the Read data to the model class
					// user.setId((int) row.getCell(0).getNumericCellValue());

					addInvoice.setInvoiceNo((int) row.getCell(0).getNumericCellValue());
					addInvoice.setManufacturer(row.getCell(1).getStringCellValue());
					addInvoice.setProductName(row.getCell(2).getStringCellValue());
					addInvoice.setProductCategory(row.getCell(3).getStringCellValue());
					addInvoice.setProductSubCategory(row.getCell(4).getStringCellValue());
					addInvoice.setAgelimit(row.getCell(5).getStringCellValue());
					addInvoice.setWeight((int) row.getCell(6).getNumericCellValue());
					addInvoice.setPackageType(row.getCell(7).getStringCellValue());
					addInvoice.setSkuid(row.getCell(8).getStringCellValue());
					addInvoice.setBatchId(row.getCell(9).getStringCellValue());
					addInvoice.setQuantity((int) row.getCell(10).getNumericCellValue());

					addInvoice.setInvoiceUploadDate(new SQLDate().getSysDateandTime());
					addInvoice.setInvoiceUpdateDate(new SQLDate().getSysDateandTime());

					DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");

					Date expiryDate = row.getCell(11).getDateCellValue();
					String string1 = dateFormat.format(expiryDate);
					addInvoice.setExpiryDate(string1);

					Date invoiceDate = row.getCell(12).getDateCellValue();
					String string2 = dateFormat.format(invoiceDate);
					addInvoice.setInvoiceDate(string2);

					addInvoice.setPurchasePrice((int) row.getCell(13).getNumericCellValue());
					addInvoice.setDiscountPrice((int) row.getCell(14).getNumericCellValue());
					addInvoice.setMrp((int) row.getCell(15).getNumericCellValue());
					addInvoice.setSalesDiscount((int) row.getCell(16).getNumericCellValue());
					addInvoice.setSellingPrice((int) row.getCell(17).getNumericCellValue());
					//addInvoice.setVendorid(vendorid);
					addInvoice.setPublished("NO");
					addInvoice.setUserId(userId);
					System.out.println(addInvoice);
					// persist data into database in here
					lstUser.add(addInvoice);
				}
				workbook.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

			int n = service.uploadProductFromExcelDistributor(lstUser);
			//Vendor vendor2 = vendorService.getVendor(vendor, vendorid);
			if (n > 0) {
				model.addAttribute("message", "Distributor Invoice is Successfully Uploaded....");
				model.addAttribute("lstUser", lstUser);
				//model.addAttribute("vendor", vendor2);

				mav = new ModelAndView("uploadProductsFromExcel");

			} else {
				model.addAttribute("message1", "Distributor Invoice Details (Excel)Not Selected.... Please Choose ");
				model.addAttribute("lstUser", lstUser);
				//model.addAttribute("vendor", vendor2);

				mav = new ModelAndView("uploadProductsFromExcel");
			}

			return mav;

}
}
