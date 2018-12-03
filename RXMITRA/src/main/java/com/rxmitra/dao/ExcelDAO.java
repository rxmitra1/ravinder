package com.rxmitra.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rxmitra.bean.Excel;

@Repository
@Transactional
public class ExcelDAO {

	@Autowired
	private HibernateTemplate template;
	
	public String updateUserInfos(List<Excel> plstUserInfo) {
		
        if (plstUserInfo != null && plstUserInfo.size() > 0) {
        	
           for (Excel excel : plstUserInfo) {
			template.save(excel);
		}
        }
        return "success";
    }

}
