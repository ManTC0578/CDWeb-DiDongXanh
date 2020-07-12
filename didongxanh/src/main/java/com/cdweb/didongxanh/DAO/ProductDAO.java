package com.cdweb.didongxanh.DAO;

import java.util.List;

public interface ProductDAO<E> extends BaseDAO<E>{
	public String listCapacity(int idSpec);
	public List<E> listProductOfStore(int storeID);	
	
}
