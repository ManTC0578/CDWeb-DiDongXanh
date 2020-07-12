package com.cdweb.didongxanh.Impl;

import javax.transaction.Transactional;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.cdweb.didongxanh.DAO.BaseDAO;
import com.cdweb.didongxanh.DAO.UserDAO;
import com.cdweb.didongxanh.Model.User;


@Repository
@Scope(proxyMode= ScopedProxyMode.TARGET_CLASS)
@Transactional
public class UserDAOImpl extends BaseDAOImpl<User> implements UserDAO<User>  {

	@Override
	public int login(String username, String password) {
		// TODO Auto-generated method stub
		return 0;
	}

}
