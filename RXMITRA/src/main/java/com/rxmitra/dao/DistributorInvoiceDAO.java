package com.rxmitra.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rxmitra.bean.AddInvoice;
import com.rxmitra.bean.DistributorInvoice;

@Repository
@Transactional
public class DistributorInvoiceDAO {
	
	@Autowired
	private HibernateTemplate template;
	
	
	public int uploadProductFromExcelDistributor(List<DistributorInvoice> distributorInvoiceList) {
		
		int i = 0;
		if (distributorInvoiceList != null && distributorInvoiceList.size() > 0) {

			for (DistributorInvoice addInvoice : distributorInvoiceList) {

				Integer purchasePrice = addInvoice.getPurchasePrice();
				Integer discountPrice = addInvoice.getDiscountPrice();
				Integer actualPrice = purchasePrice - (purchasePrice * discountPrice / 100);

				addInvoice.setActualPrice(actualPrice);

				i = (Integer) template.save(addInvoice);
			}
		}
		return i;
		
	}

}
