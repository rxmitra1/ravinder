package com.rxmitra.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.binary.Base64;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rxmitra.bean.Prescription;
import com.rxmitra.bean.PrescriptionManagement;
import com.rxmitra.bean.ReceivedRequest;
import com.rxmitra.bean.Vendor;
import com.rxmitra.bean.VendorProduct;
import com.rxmitra.service.ReceivedRequestService;
import com.rxmitra.utils.SQLDate;

@Controller
public class ReceivedRequestController {

	@Autowired
	private ReceivedRequestService reqService;

	@RequestMapping(path = "/getReceivedRequestData", method = RequestMethod.GET)
	public ModelAndView getReceivedRequestData(Model model) {

		ModelAndView mav = null;
		// List<String> al = new ArrayList<String>();

		// Pagination
		List<Integer> countpagesList = new ArrayList<Integer>();
		Long count = reqService.getReceivedRequestCount();
		if (count > 5) {
			Long countpages = count / 4;
			for (int i = 1; i <= countpages + 1; i++) {
				countpagesList.add(i);
			}
		} else {
			countpagesList.add(1);
		}

		// End Pagination

		List<ReceivedRequest> list = reqService.getReceivedRequestData();

		if (list.size() > 0) {

			for (ReceivedRequest receivedRequest : list) {
				byte[] bs = Base64.encodeBase64(receivedRequest.getPhoto());
				String encodedString = new String(bs);
				receivedRequest.setEncodedImage(encodedString);
			}
			model.addAttribute("count", countpagesList);
			mav = new ModelAndView("ReceivedRequest1", "receivedRequestData", list);

		} else {
			mav = new ModelAndView("emptyReceivedRequest", "emptyReceivedRequest", "Data is Not Found...");
		}

		return mav;
	}

	@RequestMapping(path = "/ReceivedRequestPrescription", method = RequestMethod.POST)
	public ModelAndView ReceivedRequestPrescription(String requestId, Model model) {

		ModelAndView mav = null;
		// List<String> al = new ArrayList<String>();
		ReceivedRequest receivedRequest = reqService.getReceivedRequestData(requestId);
		PrescriptionManagement list = reqService.getReceivedRequestPrescription(requestId);

		if (receivedRequest != null) {

			if (list != null) {
				List<Prescription> prescriptionMedicines = reqService
						.getReceivedRequestPrescriptionMedicines(requestId);
				byte[] bs = Base64.encodeBase64(receivedRequest.getPhoto());
				String encodedString = new String(bs);
				receivedRequest.setEncodedImage(encodedString);
				model.addAttribute("preMngmt", list);
				model.addAttribute("prescription", prescriptionMedicines);
				mav = new ModelAndView("ReceivedRequestPrescription2", "receivedRequestData", receivedRequest);
			} else {
				byte[] bs = Base64.encodeBase64(receivedRequest.getPhoto());
				String encodedString = new String(bs);
				receivedRequest.setEncodedImage(encodedString);

				mav = new ModelAndView("ReceivedRequestPrescription1", "receivedRequestData", receivedRequest);
			}

		} else {
			mav = new ModelAndView("emptyReceivedRequest", "emptyReceivedRequest", "Data is Not Found...");
		}

		return mav;
	}

	@RequestMapping(path = "/viewReceivedRequestsByDates", method = RequestMethod.POST)
	public ModelAndView viewReceivedRequestsByDates(String fromDate, String toDate, String pincode, String requestId,
			Model model) {

		ModelAndView mav = null;
		List<String> al = new ArrayList<String>();

		List<ReceivedRequest> list = reqService.viewReceivedRequestsByDates(fromDate, toDate, pincode, requestId);
		if (fromDate != "" || toDate != "" || pincode != "" || requestId != "") {

			// Pagination
			List<Integer> countpagesList = new ArrayList<Integer>();
			Long count = reqService.getReceivedRequestCount(fromDate, toDate, pincode, requestId);
			if (count > 5) {
				Long countpages = count / 4;
				for (int i = 1; i <= countpages + 1; i++) {
					countpagesList.add(i);
				}
			} else {
				countpagesList.add(1);
			}

			// End Pagination

			if (list.size() > 0) {
				for (ReceivedRequest receivedRequest : list) {
					byte[] bs = Base64.encodeBase64(receivedRequest.getPhoto());
					String encodedString = new String(bs);
					al.add(encodedString);
				}
				model.addAttribute("count", countpagesList);
				model.addAttribute("userImage", al);
				model.addAttribute("fromDate", fromDate);
				model.addAttribute("toDate", toDate);
				model.addAttribute("pincode", pincode);
				model.addAttribute("requestId", requestId);
				mav = new ModelAndView("ReceivedRequest1", "receivedRequestData", list);

			} else {
				model.addAttribute("fromDate", fromDate);
				model.addAttribute("toDate", toDate);
				model.addAttribute("pincode", pincode);
				model.addAttribute("requestId", requestId);
				mav = new ModelAndView("emptyReceivedRequest", "emptyReceivedRequest", "Data Not Found...");
			}
		} else {
			List<ReceivedRequest> list1 = reqService.getReceivedRequestData();
			List<String> al1 = new ArrayList<String>();
			if (list1.size() > 0) {

				for (ReceivedRequest receivedRequest : list1) {
					byte[] bs = Base64.encodeBase64(receivedRequest.getPhoto());
					String encodedString = new String(bs);
					al1.add(encodedString);
				}

				model.addAttribute("userImage", al1);
				mav = new ModelAndView("ReceivedRequest1", "receivedRequestData", list1);

			} else {
				mav = new ModelAndView("emptyReceivedRequest", "emptyReceivedRequest", "Data is Not Found...");
			}
		}

		return mav;
	}

	@RequestMapping(path = "/savePrescriptionAndDoctorData", method = RequestMethod.POST)
	public ModelAndView savePrescriptionAndDoctorData(PrescriptionManagement preMngmt, String status,
			HttpServletRequest request, Model model) {

		ModelAndView mav = null;
		System.out.println(preMngmt);
		System.out.println(status + "AAAAAAAAAAAAAAAAAAAAAAAAAAAS");
		// get the last inserted id
		Integer preMngmtId1 = null;
		Integer preMngmtId = reqService.lastPreMngmtId();
		if (preMngmtId == null) {
			preMngmtId1 = 1;

		} else {
			preMngmtId1 = preMngmtId + 1;

		}

		String requestId = preMngmt.getRequestId();
		// String medicineName = prescription.getMedicineName();
		// String medicineName1 = medicineName.substring(0, 1);
		String orderId = "RX" + "00" + requestId;

		List<Prescription> preList = new ArrayList<Prescription>();

		String[] medicineNames = request.getParameterValues("medicineName");
		String[] quantitys = request.getParameterValues("quantity");
		String[] mrps = request.getParameterValues("mrp");
		String[] discountPrices = request.getParameterValues("discountPrice");

		for (int i = 0; i < medicineNames.length; i++) {

			Prescription prescription = new Prescription();

			prescription.setMedicineName(medicineNames[i]);
			prescription.setQuantity(quantitys[i]);
			prescription.setMrp(mrps[i]);
			prescription.setDiscountPrice(discountPrices[i]);
			Integer finalPrice2 = Integer.parseInt(mrps[i])
					- (Integer.parseInt(mrps[i]) / (100 / Integer.parseInt(discountPrices[i])));

			prescription.setFinalPrice(finalPrice2.toString());
			prescription.setRequestId(preMngmt.getRequestId());
			prescription.setOrderId(orderId);
			preList.add(prescription);

		}

		preMngmt.setOrderId(orderId);
		preMngmt.setStatus(status);
		preMngmt.setPrescriptionDate(new SQLDate().getSysDateandTime());
		// prescription.setPrescriptionMngmtId(preMngmtId1);

		ReceivedRequest receivedRequest = reqService.getReceivedRequestData(requestId);
		if (receivedRequest != null) {

			byte[] bs = Base64.encodeBase64(receivedRequest.getPhoto());
			String encodedString = new String(bs);
			receivedRequest.setEncodedImage(encodedString);

		}

		String message = reqService.savePrescriptionAndDoctorData(preMngmt, preList);
		if (message.equals("success")) {

			model.addAttribute("prescription", preList);
			model.addAttribute("preMngmt", preMngmt);
			model.addAttribute("preSuccess", "Prescription and Doctor details are stored successfully...");
			mav = new ModelAndView("ReceivedRequestPrescription2", "receivedRequestData", receivedRequest);

		}

		return mav;
	}

	@RequestMapping(path = "/deletePrescriptionData", method = RequestMethod.GET)
	public ModelAndView deletePrescriptionData(String prescriptionId, String requestId, Model model) {
		ModelAndView mav = null;
		String string = reqService.deletePrescriptionData(prescriptionId);
		if (string.equals("success")) {
			ReceivedRequest receivedRequest = reqService.getReceivedRequestData(requestId);
			PrescriptionManagement list = reqService.getReceivedRequestPrescription(requestId);

			if (receivedRequest != null) {

				if (list != null) {
					List<Prescription> prescriptionMedicines = reqService
							.getReceivedRequestPrescriptionMedicines(requestId);
					byte[] bs = Base64.encodeBase64(receivedRequest.getPhoto());
					String encodedString = new String(bs);
					receivedRequest.setEncodedImage(encodedString);
					model.addAttribute("preMngmt", list);
					model.addAttribute("prescription", prescriptionMedicines);
					mav = new ModelAndView("ReceivedRequestPrescription2", "receivedRequestData", receivedRequest);
				} else {
					byte[] bs = Base64.encodeBase64(receivedRequest.getPhoto());
					String encodedString = new String(bs);
					receivedRequest.setEncodedImage(encodedString);

					mav = new ModelAndView("ReceivedRequestPrescription1", "receivedRequestData", receivedRequest);
				}
			} else {
				mav = new ModelAndView("emptyReceivedRequest", "emptyReceivedRequest", "Data is Not Found...");
			}
		}

		return mav;
	}

}
