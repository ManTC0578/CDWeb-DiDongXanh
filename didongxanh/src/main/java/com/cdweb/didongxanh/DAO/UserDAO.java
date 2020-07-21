package com.cdweb.didongxanh.DAO;

public interface UserDAO<E> extends BaseDAO<E> {
	public int Login(String username,String password);
	public boolean checkUserName(String username);
}
