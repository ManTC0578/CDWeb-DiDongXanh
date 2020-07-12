package com.cdweb.didongxanh.DAO;

import java.util.List;

import com.cdweb.didongxanh.Model.Store;

public interface StoreDAO<E> extends BaseDAO<E> {
	public List<E> listStore(int productId,int productDetailId);
	
}
