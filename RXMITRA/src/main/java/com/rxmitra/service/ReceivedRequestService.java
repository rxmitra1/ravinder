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

	public String savePrescriptionAndDoctorData(PrescriptionManagement preMngmt, Prescription prescription) {

		String message = reqdao.savePrescriptionAndDoctorData(preMngmt, prescription);

		return message;
	}

}
