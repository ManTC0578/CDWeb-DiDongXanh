package com.cdweb.didongxanh.Impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cdweb.didongxanh.DAO.StoreDAO;
import com.cdweb.didongxanh.Model.Role;
import com.cdweb.didongxanh.Model.Store;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
@Transactional
public class StoreDAOImpl extends BaseDAOImpl<Store> implements StoreDAO<Store> {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Store> listStore(int productId, int productDetailId) {
		

		String sql1 = "select DISTINCT s from store s JOIN store_list_items sItems on s.id = sItems.store_storeListItems.id "
				+ "JOIN sItems.productDetail_storeListItems.product_proDetail p "
				+ "where p.id = :PID and "
				+ "sItems.productDetail_storeListItems.id = :PDID "
				+ "and sItems.quantity > 0";
		Query<Store> que = sessionFactory.getCurrentSession().createQuery(sql1, Store.class);
		
		que.setParameter("PID", productId);
		que.setParameter("PDID", productDetailId);
		
		
	
		return que.list();
	}

}
