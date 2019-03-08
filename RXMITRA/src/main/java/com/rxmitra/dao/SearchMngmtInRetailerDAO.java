package com.rxmitra.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.rxmitra.bean.DistributorBrands;
import com.rxmitra.bean.UserRegistration;

@Repository
public class SearchMngmtInRetailerDAO {

	@Autowired
	private HibernateTemplate template;

	public List<UserRegistration> searchByDistributor(String category, String brandName, String state) {
		
		List<UserRegistration> list2 = new ArrayList<UserRegistration>();
		
		String sql = "from DistributorBrands where category='" + category + "' and distributorBrands like '%"
				+ brandName + "%'";

		Query createQuery = template.getSessionFactory().openSession().createQuery(sql);
		List<DistributorBrands> list = createQuery.list();

		for (DistributorBrands distributorBrands : list) {

			String sql1 = "from UserRegistration where registrationId='" + distributorBrands.getDistributorId()
					+ "' and state='" + state + "'";

			Query createQuery1 = template.getSessionFactory().openSession().createQuery(sql1);
			UserRegistration userRegistration =(UserRegistration) createQuery1.uniqueResult();
			list2.add(userRegistration);

			String sql2 = "from DistributorBrands where distributorId='" + distributorBrands.getDistributorId() + "'";
			Query createQuery2 = template.getSessionFactory().openSession().createQuery(sql2);
			
			List<DistributorBrands> list3 = createQuery2.list();

			
			
			
			
			
			for (DistributorBrands distributorBrands2 : list3) {

				String string = distributorBrands2.getDistributorBrands();

				if (distributorBrands2.getDistributorId() == 3) {
					String[] strings = string.split(",", string.length());
					for (String s : strings) {

					}
				}

			}
			
			
			
			
			
		}

		return list2;
	}
}
