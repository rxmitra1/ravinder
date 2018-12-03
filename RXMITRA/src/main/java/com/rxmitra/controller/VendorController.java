package com.rxmitra.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.Vendor;
import com.rxmitra.bean.VendorProduct;
import com.rxmitra.dao.VendorDAO;
import com.rxmitra.dao.VendorDAOImpl;
import com.rxmitra.exception.VendorException;
import com.rxmitra.service.VendorService;

@Controller
@RequestMapping("/")
public class VendorController {

	@Autowired
	private VendorService service;

	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public ModelAndView index(Vendor vendorDetails, Model model) {
		ModelAndView modelAndView = new ModelAndView("IndexPage");
		modelAndView.addObject("vendorDetails", vendorDetails);
		return modelAndView;
	}

	@RequestMapping(path = "/rx", method = RequestMethod.GET)
	public ModelAndView employeeHome(Vendor vendorDetails, Model model) {
		ModelAndView modelAndView = new ModelAndView("Employeehome");
		modelAndView.addObject("vendorDetails", vendorDetails);
		return modelAndView;
	}

	@RequestMapping(path = "/add", method = RequestMethod.GET)
	public ModelAndView addVendor(Vendor vendorDetails, Model model) {
		ModelAndView modelAndView = new ModelAndView("AddVendor");
		modelAndView.addObject("vendorDetails", vendorDetails);
		return modelAndView;
	}

	@RequestMapping(path = "/addProcess", method = RequestMethod.POST)
	public ModelAndView registerVendor(HttpServletRequest request, HttpSession session, Vendor vendor, Model model)
			throws VendorException {
		ModelAndView mav = null;
		String userId = (String) session.getAttribute("referenceId");
		vendor.setUserId(userId);
		int i = service.registerVendor(vendor, request);
		model.addAttribute("vendorDetails", vendor);
		if (i < 0) {
			model.addAttribute("message", "Vendor Registration Failed. Please Try Again...");
			mav = new ModelAndView("AddVendor");
		} else {
			model.addAttribute("message", "Vendor Registered Successfully...");
			model.addAttribute("vendorDetails", vendor);
			model.addAttribute("vendorId", vendor.getVendorId());

			mav = new ModelAndView("SelectProductType");
		}
		return mav;
	}

	@RequestMapping(path = "/GetVendorDetails", method = RequestMethod.GET)
	public ModelAndView displayVendor(Vendor vendor, Model model, int pageid, HttpSession session)
			throws VendorException {
		ModelAndView mav = null;

		int total = 5;
		if (pageid == 1) {
		} else {
			pageid = (pageid - 1) * total + 1;
		}

		String refId = (String) session.getAttribute("referenceId");
		List<Vendor> list = service.dispalyVendor(refId, pageid, total);
		if (!list.isEmpty()) {
			mav = new ModelAndView("ViewVendorDetails", "vendorList", list);
		} else {
			model.addAttribute("dataNotFound", "Data Not Found..");
			mav = new ModelAndView("ViewVendorDetails");
		}

		return mav;
	}

	@RequestMapping(path = "/DisplayVendors", method = RequestMethod.GET)
	public String updateVendors(Vendor vendor, Model model) throws VendorException {

		return "DisplayVendorsToUpdate";
	}

	@RequestMapping(path = "/DisplayVendorsToInsertProducts", method = RequestMethod.POST)
	public ModelAndView displayVendorsToInsertProducts(HttpServletRequest request, Vendor vendor, Model model,
			HttpSession session) throws VendorException {
		String vendorname = request.getParameter("vendorname");

		String refId = (String) session.getAttribute("referenceId");
		ModelAndView mav = null;

		if (vendorname == "") {
			model.addAttribute("selectNameErroe", "Please ! Select the Name...");
			mav = new ModelAndView("DisplayVendorsToUpdate");
		} else {

			Vendor vendor2 = service.getVendor(vendorname, refId);
			if (vendor2 != null) {

				model.addAttribute("vendorname", vendorname);
				mav = new ModelAndView("ViewVendors1", "vendor", vendor2);
			} else {
				model.addAttribute("vendorname", vendorname);
				model.addAttribute("valiNameError", "please enter the valid name..");
				mav = new ModelAndView("DisplayVendorsToUpdate");
			}

		}
		return mav;
	}

	@RequestMapping(path = "/DisplayVendorsToUpdateProducts", method = RequestMethod.POST)
	public ModelAndView displayVendorsToUpdateProducts(HttpServletRequest request, Vendor vendor, Model model,
			HttpSession session) throws VendorException {
		String vendorname = request.getParameter("vendorname");
		String refId = (String) session.getAttribute("referenceId");

		ModelAndView mav = null;

		if (vendorname == "") {
			model.addAttribute("selectNameErroe", "Please ! Select the Name...");
			mav = new ModelAndView("DisplayVendorsToUpdateProducts");
		} else {
			Vendor vendor2 = service.getVendor(vendorname, refId);
			if (vendor2 != null) {
				model.addAttribute("vendor", vendor2);
				mav = new ModelAndView("ViewVendors4");
			} else {
				model.addAttribute("valiNameError", "please enter the valid name..");
				mav = new ModelAndView("DisplayVendorsToUpdateProducts");
			}

		}
		return mav;
	}

	@RequestMapping(path = "/vendorAddInvoice", method = RequestMethod.GET)
	public ModelAndView vendorAddInvoice(HttpServletRequest request, Vendor vendor, Integer vid, Model model)
			throws VendorException {
		ModelAndView mav = null;
		Vendor vendor2 = service.getVendor(vendor, vid);
        mav=new ModelAndView("ViewVendors2","vendor", vendor2);
		return mav;

	}

	@RequestMapping(path = "/DisplayVendorsToInsertProducts1", method = RequestMethod.POST)
	public ModelAndView displayVendorsToInsertProducts1(HttpServletRequest request, Vendor vendor, HttpSession session,
			Model model) throws VendorException {
		String vendorname = request.getParameter("vendorname");
		String refId = (String) session.getAttribute("referenceId");

		ModelAndView mav = null;

		if (vendorname == "") {
			model.addAttribute("selectNameErroe", "Please ! Select the Name...");
			mav = new ModelAndView("DisplayVendorsToViewInvoice", "vendorname", vendorname);
		} else {

			Vendor vendor2 = service.getVendor(vendorname, refId);
			if (vendor2 != null) {
				model.addAttribute("vendor", vendor2);
				mav = new ModelAndView("ViewVendors3", "vendorname", vendorname);
			} else {
				model.addAttribute("valiNameError", "please enter the valid name..");
				mav = new ModelAndView("DisplayVendorsToViewInvoice", "vendorname", vendorname);
			}

		}
		return mav;
		/*
		 * List<Vendor> list = service.dispalyVendor(); System.out.println(list.size()+
		 * "=============================================");
		 * model.addAttribute("vendorList", list);
		 */

	}

	@RequestMapping(path = "/SelectProductType", method = RequestMethod.GET)
	public String selectProductType(HttpServletRequest request, HttpServletResponse response, Integer vid,
			Vendor vendor, Model model) throws VendorException {
		Vendor vendor2 = service.getVendor(vendor, vid);

		model.addAttribute("vendorDetails", vendor2);
		return "SelectProductType";
	}

	@RequestMapping(path = "/ViewVendorToAddProducts", method = RequestMethod.GET)
	public String viewVendorToAddProducts(HttpServletRequest request, HttpServletResponse response, Vendor vendor,
			Model model) throws VendorException {
		// Integer vid = Integer.parseInt(request.getParameter("vendorid"));
		// System.out.println(vid+"fghvjxkljdaoisdjksaDAsiduJKNDSoasidkl---------------");
		Vendor vendor2 = service.getVendor(vendor, 1);
		model.addAttribute("vendorDetails", vendor2);
		return "ViewVendorToAddProducts";
	}

	protected ModelAndView addUpdateVendors(HttpServletRequest request, HttpServletResponse response, Vendor vendor,
			Model model) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String from = request.getParameter("from");
		String shopid = request.getParameter("shopid");
		ArrayList<Vendor> val = new ArrayList<Vendor>();
		String page = "";
		VendorDAO vda = new VendorDAOImpl();

		ModelAndView mav = null;

		if (from.equals("A")) {
			page = "./ADisplayVendors.jsp";
		} else if (from.equals("AI")) {
			page = "./AIDisplayVendors.jsp";
		} else if (from.equals("E")) {
			page = "./DisplayVendors.jsp";
		} else if (from.equals("EU")) {
			page = "./DisplayVendorsToUpdate.jsp";
		} else if (from.equals("UU")) {
			mav = new ModelAndView("DisplayUserVendorsToUpdate");
		} else if (from.equals("U")) {
			mav = new ModelAndView("DisplayUserVendors");
		}

		return mav;

	}
}
