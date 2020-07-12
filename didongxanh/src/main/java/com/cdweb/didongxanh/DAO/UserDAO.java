package com.cdweb.didongxanh.DAO;

public interface UserDAO<E> extends BaseDAO<E> {
	public int login(String username, String password);
}
