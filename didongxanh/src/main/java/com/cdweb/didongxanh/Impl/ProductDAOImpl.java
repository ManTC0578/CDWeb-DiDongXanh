package com.cdweb.didongxanh.Impl;

import java.util.List;

import javax.transaction.Transactional;


import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.cdweb.didongxanh.DAO.ProductDAO;
import com.cdweb.didongxanh.DAO.UserDAO;
import com.cdweb.didongxanh.Model.Product;
import com.cdweb.didongxanh.Model.Store;

@Repository
@Transactional
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class ProductDAOImpl extends BaseDAOImpl<Product> implements ProductDAO<Product>{

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public String listCapacity(int idSpec) {
		Query query = sessionFactory.getCurrentSession().createQuery("select distinct s.value from specs_detail s where s.name='Bộ nhớ trong' and s.spec_specDetail.id=" + "'" +idSpec+ "'");
		List<String> list = (List<String>) query.list();
		return list.get(0);
	}

	@Override
	public List<Product> listProductOfStore(int storeID) {
		
		String sql = "select DISTINCT p from product p JOIN p.productDetails pd JOIN pd.storeListItems_ProDetail sItems "
				+ "where sItems.store_storeListItems.id = :PID and pd.product_proDetail.item.category_item.id = 1";
		Query<Product> que = sessionFactory.getCurrentSession().createQuery(sql, Product.class);
		que.setParameter("PID",storeID);
		
		return que.list();
	}
	
	
}
