package com.cdweb.didongxanh.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;

import com.cdweb.didongxanh.DAO.ProductDAO;
import com.cdweb.didongxanh.Model.Pagging;
import com.cdweb.didongxanh.Model.Product;

@Service
public class ProductService {

	@Autowired
	private ProductDAO<Product> productDAO;

	public List<Product> getListProducts(String query,Map<String, Object> queryParams,Pagging pagging){
		return this.productDAO.getList(query, queryParams, pagging);
	}
    
	public void saveProduct(Product product) throws Exception {

		product.setActiveFlag(1);
		product.setCreateDate(new Date());
		product.setUpdateDate(new Date());
		this.productDAO.save(product);
	}

	public void updateProduct(Product product) throws Exception {

		product.setActiveFlag(1);
	
		product.setUpdateDate(new Date());

		this.productDAO.update(product);
	}
	
	public void deleteProduct(Product product) throws Exception {

		product.setActiveFlag(0);
		product.setUpdateDate(new Date());
		this.productDAO.update(product);
	}
	
	public Product getProductById(int id) {
		return this.productDAO.findById(Product.class, id);
	}
	public String getSpecs(int idSpec){
		return this.productDAO.listCapacity(idSpec);
	}
	
	public List<Product> listProductOfStore(int storeID) {
		return this.productDAO.listProductOfStore(storeID);
	}
	
	
}
