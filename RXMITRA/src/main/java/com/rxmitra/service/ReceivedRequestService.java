package com.rxmitra.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.Prescription;
import com.rxmitra.bean.PrescriptionManagement;
import com.rxmitra.bean.ReceivedRequest;
import com.rxmitra.dao.ReceivedRequestDAO;

@Service
public class ReceivedRequestService {

	@Autowired
	private ReceivedRequestDAO reqdao;

	public List<ReceivedRequest> getReceivedRequestData() {

		List<ReceivedRequest> list = reqdao.getReceivedRequestData();

		return list;
	}
	public ReceivedRequest getReceivedRequestData(String requestId) {

		ReceivedRequest receivedRequest = reqdao.getReceivedRequestData(requestId);

		return receivedRequest;
	}
	
	public PrescriptionManagement getReceivedRequestPrescription(String requestId) {

		PrescriptionManagement list = reqdao.getReceivedRequestPrescription(requestId);

		return list;
	}
	public List<Prescription> getReceivedRequestPrescriptionMedicines(String mngmtId) {

		List<Prescription> list = reqdao.getReceivedRequestPrescriptionMedicines(mngmtId);

		return list;
	}
	public String deletePrescriptionData(String mngmtId) {
      int i = Integer.parseInt(mngmtId);
		String s = reqdao.deletePrescriptionData(i);

		return s;
	}
	public Long getReceivedRequestCount() {

		Long preMngmtId = reqdao.getReceivedRequestCount();

			return preMngmtId;
		}
	public Long getReceivedRequestCount(String fromDate,String toDate,String pincode,String requestId) {

		Long preMngmtId = reqdao.getReceivedRequestCount(fromDate, toDate, pincode, requestId);

			return preMngmtId;
		}
	
	public Integer lastPreMngmtId() {

	Integer preMngmtId = reqdao.lastPreMngmtId();

		return preMngmtId;
	}

	public String savePrescriptionAndDoctorData(List<Prescription> prescription) {

		String message = reqdao.savePrescriptionAndDoctorData(prescription);

		return message;
	}
	public String savePrescriptionAndDoctorData(PrescriptionManagement preMngmt, List<Prescription> prescription) {

		String message = reqdao.savePrescriptionAndDoctorData(preMngmt, prescription);

		return message;
	}

	public List<ReceivedRequest> viewReceivedRequestsByDates(String fromDate,String toDate,String pincode,String requestId) {

		List<ReceivedRequest> list = reqdao.viewReceivedRequestsByDates(fromDate,toDate,pincode,requestId);

		return list;
	}
	
	public String updateExistingPrescription(PrescriptionManagement prescriptionManagement,List<Prescription> prescriptionMedicines) {

		String list = reqdao.updateExistingPrescription(prescriptionManagement,prescriptionMedicines);

		return list;
	}
	
}
