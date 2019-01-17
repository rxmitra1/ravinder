
package com.rxmitra.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.AddInvoice;
import com.rxmitra.bean.AddInvoice1;
import com.rxmitra.bean.Publish;
import com.rxmitra.bean.Vendor;
import com.rxmitra.service.AddInvoiceService;
import com.rxmitra.service.VendorService;
import com.rxmitra.utils.SQLDate;

@Controller
public class AddInvoiceController {
	@Autowired
	private AddInvoiceService service;
	@Autowired
	private VendorService vendorService;

	@RequestMapping(value = "/processAddInvoice", method = RequestMethod.POST)
	public ModelAndView processExcel(Model model, Integer vendorid, @RequestParam("file") MultipartFile file,
			Vendor vendor, HttpSession session) {
		ModelAndView mav = null;

		int userId = Integer.parseInt((String) session.getAttribute("referenceId"));

		List<AddInvoice> lstUser = new ArrayList<AddInvoice>();
		try {

			int i = 1;
			// Creates a workbook object from the uploaded excelfile
			XSSFWorkbook workbook = new XSSFWorkbook(file.getInputStream());
			// Creates a worksheet object representing the first sheet
			XSSFSheet worksheet = workbook.getSheetAt(0);
			// Reads the data in excel file until last row is encountered
			while (i <= worksheet.getLastRowNum()) {
				// Creates an object for the UserInfo Model
				AddInvoice addInvoice = new AddInvoice();
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
				addInvoice.setVendorid(vendorid);
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

		int n = service.updateList(lstUser);
		Vendor vendor2 = vendorService.getVendor(vendor, vendorid);
		if (n > 0) {
			model.addAttribute("message", "Vendor Invoice Details Successfully Inserted....");
			model.addAttribute("lstUser", lstUser);
			model.addAttribute("vendor", vendor2);

			mav = new ModelAndView("ViewVendors2");

		} else {
			model.addAttribute("message1", "Vendor Invoice Details (Excel)Not Selected.... Please Choose ");
			model.addAttribute("lstUser", lstUser);
			model.addAttribute("vendor", vendor2);

			mav = new ModelAndView("ViewVendors2");
		}

		return mav;
	}

	@RequestMapping(value = "/viewVendorInvoice", method = RequestMethod.GET)
	public ModelAndView viewVendorInvoice(Integer pageid, Model model, Integer vid, String vendorname) {
		int total = 4;
		ModelAndView mav = null;
		if (pageid == 1) {
		} else {
			pageid = (pageid - 1) * total + 1;
		}
 
		// Pagination
		List<Integer> countpagesList = new ArrayList<Integer>();
		Long count = service.countTotalForPaginationInvoiceByVendor(vid);
		if (count > 4) {
			Long countpages = count / 4;
			for (int i = 1; i <= countpages + 1; i++) {
				countpagesList.add(i);
			}
		} else {
			countpagesList.add(1);
		}

		// End Pagination
		
		List<AddInvoice> list = service.viewVendorInvoice(vid, pageid, total);
		Set<AddInvoice> set = new HashSet<AddInvoice>();
		for (AddInvoice addInvoice : list) {
			set.add(addInvoice);
		}
		if (list.size() > 0) {
			model.addAttribute("vid", vid);
			model.addAttribute("count", countpagesList);
			model.addAttribute("vendorname", vendorname);
			mav = new ModelAndView("DisplayVendorInvoice", "VendorInvoiceList", set);
		} else {
			model.addAttribute("vid", vid);
			model.addAttribute("vendorname", vendorname);
			mav = new ModelAndView("DisplayVendorInvoice", "message", "Data Not Foud...");
		}
		return mav;
	}

	@RequestMapping(value = "/viewVendorInvoiceDetails", method = RequestMethod.POST)
	public ModelAndView viewVendorInvoiceDetails(String update, Integer pageid, Model model, HttpServletRequest request,
			HttpSession session) {
		int total = 4;
		ModelAndView mav = null;
		String userId = (String) session.getAttribute("referenceId");
		String invoiceNo = request.getParameter("invoiceNo");
		// Integer invoiceNo = Integer.parseInt(parameter);
		if (pageid == 1) {
		} else {
			pageid = (pageid - 1) * total + 1;
		}
		
		
		if(invoiceNo==null) {
			invoiceNo="";
		}

		if (invoiceNo != "") {

			// Pagination
			List<Integer> countpagesList1 = new ArrayList<Integer>();
			Long count1 = service.countTotalForPaginationUpdateInvoice(userId, invoiceNo);
			if (count1 > 4) {
				Long countpages1 = count1 / 4;
				for (int i = 1; i <= countpages1 + 1; i++) {
					countpagesList1.add(i);
				}
			} else {
				countpagesList1.add(1);
			}

			// End Pagination
			List<AddInvoice> list = service.viewVendorInvoiceDetails(userId, invoiceNo, pageid, total);

			if (update.equals("yes")) {
				model.addAttribute("invoiceNo", invoiceNo);
				model.addAttribute("count", countpagesList1);
				mav = new ModelAndView("DisplayVendorInvoiceandUpdate", "VendorInvoiceList", list);
			} else if (list.size() > 0) {
				model.addAttribute("count", countpagesList1);
				mav = new ModelAndView("DisplayVendorInvoice1", "VendorInvoiceList", list);
			} else {
				mav = new ModelAndView("DisplayVendorInvoice1", "message", "Data Not Foud...");
			}
		} else {

			// Pagination
			List<Integer> countpagesList = new ArrayList<Integer>();
			Long count = service.countTotalForPaginationUpdateInvoiceAll(userId);
			if (count > 4) {
				Long countpages = count / 4;
				for (int i = 1; i <= countpages + 1; i++) {
					countpagesList.add(i);
				}
			} else {
				countpagesList.add(1);
			}

			// End Pagination

			List<AddInvoice> list = service.viewSetSalesPriceAll(userId, pageid, total);
			model.addAttribute("count", countpagesList);
			mav = new ModelAndView("DisplayVendorInvoiceandUpdate", "VendorInvoiceList", list);

		}

		return mav;
	}

	@RequestMapping(value = "/updateInvoiceByInvoiceNo", method = RequestMethod.POST)
	public ModelAndView updateInvoiceByInvoiceNo(AddInvoice addInvoice,HttpSession session,Model model) {
		ModelAndView mav = null;
		String userId = (String) session.getAttribute("referenceId");
		addInvoice.setUserId(Integer.parseInt(userId));
		addInvoice.setInvoiceUpdateDate(new SQLDate().getSysDate());
		String message = service.updateInvoiceByInvoiceNo(addInvoice);
		List<AddInvoice> list = new ArrayList<AddInvoice>();
		if (message.equals("updated")) {
			list.add(addInvoice);
			model.addAttribute( "VendorInvoiceList", list);
			mav = new ModelAndView("DisplayVendorInvoiceandUpdate", "updateSuccess", "Updated Successfully......");
		} else {
			// mav = new ModelAndView("ViewUserProfile", "userRegistration",
			// userRegistration);
		}
		return mav;
	}

	@RequestMapping(value = "/deleteInvoiceByInvoiceNo", method = RequestMethod.POST)
	public ModelAndView deleteInvoiceByInvoiceNo(Integer invoiceNo, Model model) {
		ModelAndView mav = null;
		String message = service.deleteInvoiceByInvoiceNo(invoiceNo);
		if (invoiceNo != null) {
			if (message.equals("Deleted")) {
				model.addAttribute("invoiceNo", invoiceNo);
				mav = new ModelAndView("DeleteInvoiceByInvoiceNo", "deleteInvoice", "Deleted Successfully..");
			} else if (message.equals("Not Deleted")) {
				model.addAttribute("invoiceNo", invoiceNo);
				mav = new ModelAndView("DeleteInvoiceByInvoiceNo", "notDeleteInvoice",
						"Not Deleted ur Selected Records..");
			} else {
				model.addAttribute("invoiceNo", invoiceNo);
				mav = new ModelAndView("DeleteInvoiceByInvoiceNo", "errorInvoice", "InvoiceNo is Not Found.");
			}
		} else {
			mav = new ModelAndView("DeleteInvoiceByInvoiceNo", "emptyInvoiceNo", "Please Enter InvoiceNo .");
		}

		return mav;
	}

	@RequestMapping(value = "/viewVendorInvoiceBySkuid", method = RequestMethod.POST)
	public ModelAndView viewVendorInvoiceBySkuid(String skuid, String productName, String manufacturer, Model model) {
		ModelAndView mav = null;
		int totalQuantity = 0;
		ArrayList<AddInvoice1> addInvoice1List = new ArrayList<AddInvoice1>();

		if (skuid != "" || productName != "" || manufacturer != "") {
			List<AddInvoice> list = service.viewVendorInvoiceBySkuid(skuid, productName, manufacturer);
			for (AddInvoice addInvoice : list) {
				Integer quantity = addInvoice.getQuantity();
				totalQuantity = totalQuantity + quantity;

			}

			model.addAttribute("skuid", skuid);
			model.addAttribute("productName", productName);
			model.addAttribute("manufacturer", manufacturer);
			mav = new ModelAndView("invoiceSkuidQuantity", "skuidList", list.get(0).getProductName());
			mav.addObject("skuidList1", list.get(0).getPackageType());
			mav.addObject("totalQuantity", totalQuantity);
			mav.addObject("skuid", list.get(0).getSkuid());

		} else {

			List<Object[]> list = service.viewVendorInvoiceBySkuid();
			for (Object[] objects : list) {
				AddInvoice1 addInvoice1 = new AddInvoice1();
				addInvoice1.setProductName((String) objects[0]);
				addInvoice1.setPackageType((String) objects[1]);
				addInvoice1.setSkuid((String) objects[2]);
				addInvoice1.setTotalQuantity(String.valueOf(objects[3]));
				System.out.println(addInvoice1);
				addInvoice1List.add(addInvoice1);
			}

			mav = new ModelAndView("invoiceSkuidQuantity", "skuidList", addInvoice1List);
		}

		return mav;
	}

	@RequestMapping(value = "/viewVendorInvoiceBySkuid1", method = RequestMethod.POST)
	public ModelAndView viewVendorInvoiceBySkuid1(String skuid, String productName, String manufacturer, Integer pageid,
			Model model, HttpSession session) {
		ModelAndView mav = null;
		String userId = (String) session.getAttribute("referenceId");
		Integer total = 6;

		if (pageid == 1) {
		} else {
			pageid = (pageid - 1) * total + 1;
		}
		
		// Pagination
				List<Integer> countpagesList = new ArrayList<Integer>();
				Long count = service.countTotalForPaginationInPublish(skuid,productName,manufacturer);
				if (count > 5) {
					Long countpages = count / 4;
					for (int i = 1; i <= countpages + 1; i++) {
						countpagesList.add(i);
					}
				} else {
					countpagesList.add(1);
				}

				// End Pagination
		List<AddInvoice> list = service.viewVendorInvoiceBySkuid1(userId, skuid, productName, manufacturer, pageid,
				total);
		model.addAttribute("skuid", skuid);
		model.addAttribute("count", countpagesList);
		model.addAttribute("productName", productName);
		model.addAttribute("manufacturer", manufacturer);
		mav = new ModelAndView("invoiceSkuidDetails", "invoiceSkuidList", list);
		return mav;
	}

	@RequestMapping(value = "/salesViewVendorInvoiceBySkuid", method = RequestMethod.POST)
	public ModelAndView salesViewVendorInvoiceBySkuid(String skuid, String productName, String manufacturer,
			Integer pageid, Model model, HttpSession session) {
		ModelAndView mav = null;
		String userId = (String) session.getAttribute("referenceId");
		Integer total = 5;

		if (pageid == 1) {
		} else {
			pageid = (pageid - 1) * total + 1;
		}

		// Pagination
		List<Integer> countpagesList = new ArrayList<Integer>();
		Long count = service.countTotalForPaginationInPublish(userId);
		if (count > 5) {
			Long countpages = count / 4;
			for (int i = 1; i <= countpages + 1; i++) {
				countpagesList.add(i);
			}
		} else {
			countpagesList.add(1);
		}

		// End Pagination

		if (skuid == null || manufacturer == null || productName == null) {
			skuid = "";
			manufacturer = "";
			productName = "";
		}

		if (skuid != "" || manufacturer != "" || productName != "") {
			List<AddInvoice> list = service.viewVendorInvoiceBySkuid1(userId, skuid, productName, manufacturer, pageid,
					total);
			if (list.size() > 0) {
				model.addAttribute("count", countpagesList);
				model.addAttribute("skuid", skuid);
				model.addAttribute("manufacturer", manufacturer);
				model.addAttribute("productName", productName);

				mav = new ModelAndView("invoiceSkuidDetailsinSales", "invoiceSkuidList", list);
			} else {
				model.addAttribute("skuid", skuid);
				model.addAttribute("manufacturer", manufacturer);
				model.addAttribute("productName", productName);
				mav = new ModelAndView("emptyInvoiceSkuidDetailsinSales", "message", "Data Not Foud...");
			}

		} else {
			List<AddInvoice> list = service.viewVendorInvoiceByAllInPublish(userId, pageid, total);
			if (list.size() > 0) {
				model.addAttribute("count", countpagesList);
				mav = new ModelAndView("invoiceSkuidDetailsinSales", "invoiceSkuidList", list);
			} else {
				mav = new ModelAndView("emptyInvoiceSkuidDetailsinSales", "message", "Data Not Foud...");
			}
		}

		return mav;
	}

	@RequestMapping(value = "/addPublish", method = RequestMethod.GET)
	public ModelAndView addPublish(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = null;
		int count = 0;

		List<Publish> addInvoiceList = new ArrayList<Publish>();
		List<Integer> invoiceIdList = new ArrayList<Integer>();

		String[] parameterValues = request.getParameterValues("addInvoiceId");
		count = parameterValues.length;

		for (String string : parameterValues) {

			Publish publish = new Publish();
			invoiceIdList.add(Integer.parseInt(string));

			AddInvoice addInvoice = service.viewVendorInvoiceByInvoiceId(string);
			publish.setSalesDiscount(addInvoice.getSalesDiscount().toString());
			publish.setSalesPrice(addInvoice.getSalesDiscount().toString());
			publish.setSellingPrice(addInvoice.getSellingPrice().toString());
			publish.setProductName(addInvoice.getProductName().toString());
			publish.setMrp(addInvoice.getMrp());
			publish.setSkuid(addInvoice.getSkuid());
			String userId = (String) session.getAttribute("referenceId");
			publish.setUserId(userId);
			addInvoiceList.add(publish);
		}

		String message = service.addPublish(addInvoiceList);

		if (message.equals("success")) {

			mav = new ModelAndView("invoiceSkuidDetailsinSales", "publishSuccess",
					"" + count + " Products Published  Successfully ......");
			service.updateInvoicePublish(invoiceIdList);
		} else {
			// mav = new ModelAndView("ViewUserProfile", "userRegistration",
			// userRegistration);
		}
		return mav;
	}

	// Set Sales Price functionality.....

	@RequestMapping(value = "/setSalesPrice", method = RequestMethod.POST)
	public ModelAndView setSalesPrice(String skuid, String manufacturer, String productName, String update, Model model,
			HttpServletRequest request, HttpSession session, int pageid) {

		String userId = (String) session.getAttribute("referenceId");
		int total = 4;
		ModelAndView mav = null;
		if (pageid == 1) {
		} else {
			pageid = (pageid - 1) * total + 1;
		}

		// pagination
		List<Integer> countpagesList = new ArrayList<Integer>();
		Long count = service.countTotalForPagination(userId);
		if (count > 5) {
			Long countpages = count / 4;
			for (int i = 1; i <= countpages + 1; i++) {
				countpagesList.add(i);
			}
		} else {
			countpagesList.add(1);
		}
		// End Pagination

		if (skuid == null || manufacturer == null || productName == null) {

			skuid = "";
			manufacturer = "";
			productName = "";
		}

		if (skuid != "" || manufacturer != "" || productName != "") {
			List<AddInvoice> list = service.setSalesPrice(userId, skuid, manufacturer, productName, pageid, total);

			if (list.size() > 0) {
				model.addAttribute("VendorInvoiceList", list);
				model.addAttribute("count", countpagesList);
				model.addAttribute("skuid", skuid);
				model.addAttribute("manufacturer", manufacturer);
				model.addAttribute("productName", productName);
				mav = new ModelAndView("setSalesPrice1");
			} else {
				model.addAttribute("skuid", skuid);
				model.addAttribute("manufacturer", manufacturer);
				model.addAttribute("productName", productName);
				mav = new ModelAndView("emptySetSalesPrice1", "message", "Data Not Foud...");
			}
		} else {
			List<AddInvoice> list = service.viewSetSalesPriceAll(userId, pageid, total);

			if (list.size() > 0) {
				model.addAttribute("VendorInvoiceList", list);
				model.addAttribute("count", countpagesList);
				model.addAttribute("skuid", skuid);
				model.addAttribute("manufacturer", manufacturer);
				model.addAttribute("productName", productName);
				mav = new ModelAndView("setSalesPrice1");
			} else {
				model.addAttribute("skuid", skuid);
				model.addAttribute("manufacturer", manufacturer);
				model.addAttribute("productName", productName);
				mav = new ModelAndView("emptySetSalesPrice1", "message", "Data Not Foud...");
			}

		}

		return mav;
	}

	@RequestMapping(value = "/updateSetSalesBySkuid", method = RequestMethod.GET)
	public ModelAndView updateSetSalesBySkuid(HttpServletRequest request, HttpSession session, Model model) {
		String userId = (String) session.getAttribute("referenceId");
		ModelAndView mav = null;
		int count = 0;
		int total = 4;
		Integer pageid = 1;
		String skuid = null;
		String manufacturer = null;
		String productName = null;
		if (pageid == 1) {
		} else {
			pageid = (pageid - 1) * total + 1;
		}
		List<AddInvoice> addInvoiceList = new ArrayList<AddInvoice>();

		String[] addInvoiceIds = request.getParameterValues("checkProducts");
		String[] salesDiscounts = request.getParameterValues("salesDiscount");
		String[] sellingPrices = request.getParameterValues("sellingPrice");

		count = addInvoiceIds.length;
		for (int i = 0; i < addInvoiceIds.length; i++) {

			AddInvoice addInvoice = service.viewVendorInvoiceByInvoiceId(addInvoiceIds[i]);
			addInvoice.setSalesDiscount(Integer.parseInt(salesDiscounts[i]));
			addInvoice.setSellingPrice(Integer.parseInt(sellingPrices[i]));
			addInvoice.setInvoiceUpdateDate(new SQLDate().getSysDateandTime());
			skuid = addInvoice.getSkuid();
			manufacturer = addInvoice.getManufacturer();
			productName = addInvoice.getProductName();
			addInvoiceList.add(addInvoice);
			// String userId = (String) session.getAttribute("referenceId");

		}
		String message = service.updateSetSalesBySkuid(addInvoiceList);
		if (message.equals("updated")) {
			List<AddInvoice> list = service.setSalesPrice1(userId, skuid, manufacturer, productName);
			model.addAttribute("VendorInvoiceList", list);
			mav = new ModelAndView("setSalesPrice1", "updateSuccess",
					"" + count + " Products Updated Successfully ......");

		} else {
			// mav = new ModelAndView("ViewUserProfile", "userRegistration",
			// userRegistration);
		}
		return mav;
	}

	@RequestMapping(value = "/getProducts", method = RequestMethod.GET)
	@ResponseBody
	public List<String> getProducts(HttpServletRequest request) {
		List<String> list = service.searchProductsInIndexPage(request.getParameter("productName"));
		return list;
	}

	@RequestMapping(value = "/getProductDetailsInSearchPage", method = RequestMethod.POST)
	public ModelAndView getProductDetailsInSearchPage(String productName, HttpServletRequest request) {

		ModelAndView mav = null;
		// List<String> result = new ArrayList<String>();
		List<AddInvoice> list = service.getProductDetailsInSearchPage(productName);
		System.out.println(list);
		if (list.isEmpty()) {
			mav = new ModelAndView("dataNotFoundInSearchPage", "prodNotFound", "Data Not Found........");
		} else {
			mav = new ModelAndView("search", "productDetails", list);
		}
		return mav;
	}
}
