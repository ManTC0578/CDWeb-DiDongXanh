package com.cdweb.didongxanh.Controller;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cdweb.didongxanh.Model.Discount;
import com.cdweb.didongxanh.Model.Product;
import com.cdweb.didongxanh.Model.ProductDetail;
import com.cdweb.didongxanh.Model.SpecDetail;

import com.cdweb.didongxanh.Model.Store;
import com.cdweb.didongxanh.Model.StoreListItems;
import com.cdweb.didongxanh.Service.ProductDetailService;
import com.cdweb.didongxanh.Service.ProductService;
import com.cdweb.didongxanh.Service.StoreService;

@Controller
@Transactional
public class ProductController {
	@Autowired
	StoreService storeService;
	
	@Autowired
	ProductDetailService productDetailService;

	@Autowired
	ProductService productService;
	
	@Autowired
	SessionFactory sessionFactory;
	
	@RequestMapping(value = { "/shop" })
	public String index(Model model) {
		Store store = this.storeService.getStoreById(2);
		
		List<Product> products = this.productService.listProductOfStore(store.getId());
		model.addAttribute("products", products);
		return "product-lists";
	}
}
