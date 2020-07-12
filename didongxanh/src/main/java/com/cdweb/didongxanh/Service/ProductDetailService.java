package com.cdweb.didongxanh.Service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdweb.didongxanh.DAO.ProductDetailDAO;

import com.cdweb.didongxanh.Model.Pagging;
import com.cdweb.didongxanh.Model.ProductDetail;


@Service
public class ProductDetailService {
	
	@Autowired
	ProductDetailDAO<ProductDetail> ProductDetailDAO;
	
	public List<ProductDetail> getListProductDetails(String query,Map<String, Object> queryParams,Pagging pagging){
		return this.ProductDetailDAO.getList(query, queryParams, pagging);
	}
    
	public void saveProductDetail(ProductDetail ProductDetail) throws Exception {

		ProductDetail.setActiveFlag(1);
		ProductDetail.setCreateDate(new Date());
		ProductDetail.setUpdateDate(new Date());
		this.ProductDetailDAO.save(ProductDetail);
	}

	public void updateProductDetail(ProductDetail ProductDetail) throws Exception {

		ProductDetail.setActiveFlag(1);
	
		ProductDetail.setUpdateDate(new Date());

		this.ProductDetailDAO.update(ProductDetail);
	}
	
	public void deleteProductDetail(ProductDetail ProductDetail) throws Exception {

		ProductDetail.setActiveFlag(0);
		ProductDetail.setUpdateDate(new Date());
		this.ProductDetailDAO.update(ProductDetail);
	}
	
	public ProductDetail getProductDetailById(int id) {
		return this.ProductDetailDAO.findById(ProductDetail.class, id);
	}
	
	public BigDecimal GetLowestPrice(int Capacity, int product_id) {
		return this.ProductDetailDAO.GetLowestPrice(Capacity,product_id);
	}
	
	
}
