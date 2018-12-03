package com.rxmitra.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rxmitra.bean.Excel;
import com.rxmitra.dao.ExcelDAO;

@Service
public class ExcelService {
	
	@Autowired
	private ExcelDAO dao;

	public String updateList(List<Excel> lstUser){
		String string = dao.updateUserInfos(lstUser);
		return string;
	}
}
