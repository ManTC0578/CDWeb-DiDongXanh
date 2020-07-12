package com.cdweb.didongxanh.DAO;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.cdweb.didongxanh.Model.Pagging;

public interface BaseDAO<E> {
	
	// tìm Object bằng id
	public E findById(Class<E> e, Serializable id);
	// tìm ra thuộc tính bất kì trong bảng
	// tìm ra ds các Object có thuộc tính là "property" và có giá trị là "value"
	public List<E> findByProperty(String property , Object value);
	public int save(E instance);
	public void update(E instance);
	public void delete(E instance);
	
	public List<E> getList(String queryStr,Map<String, Object> queryParams,Pagging pagging);

}
