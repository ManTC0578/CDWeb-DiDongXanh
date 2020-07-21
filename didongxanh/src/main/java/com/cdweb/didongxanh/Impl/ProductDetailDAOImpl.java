package com.cdweb.didongxanh.Impl;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.cdweb.didongxanh.DAO.ProductDetailDAO;
import com.cdweb.didongxanh.Model.ProductDetail;
import com.cdweb.didongxanh.Model.Store;

@Repository
@Transactional
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class ProductDetailDAOImpl extends BaseDAOImpl<ProductDetail> implements ProductDetailDAO<ProductDetail> {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public BigDecimal GetLowestPrice(int specId) {
		String sql = "select MIN(pd.price) from product_detail pd WHERE pd.spec_proDetail.id= :id";
		//Query<In> que = sessionFactory.getCurrentSession().createQuery(sql1, Store.class).Re;
		BigDecimal pri = this.sessionFactory.getCurrentSession().createQuery(sql, BigDecimal.class).setParameter("id", specId).getSingleResult();
		
		return pri;
	}

	@Override
	public List<Integer> getListCategory(int product_id) {
		String sql = "select DISTINCT pd.capacity from product_detail pd  WHERE pd.product_proDetail.id = :Pid";
		List<Integer> list = this.sessionFactory.getCurrentSession().createQuery(sql, Integer.class).setParameter("Pid", product_id).getResultList();
		return list;
	}
	

}
