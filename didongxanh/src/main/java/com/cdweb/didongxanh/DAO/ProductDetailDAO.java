package com.cdweb.didongxanh.DAO;

import java.math.BigDecimal;
import java.util.List;

import com.cdweb.didongxanh.Model.ProductDetail;

public interface ProductDetailDAO<E> extends BaseDAO<E> {
public BigDecimal GetLowestPrice(int Capacity, int product_id);
public List<Integer> getListCategory(int product_id);
}
