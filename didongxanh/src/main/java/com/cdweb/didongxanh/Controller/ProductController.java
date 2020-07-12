package com.cdweb.didongxanh.Controller;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
		
			String sql1 = "select DISTINCT s from store s JOIN store_list_items sItems on s.id = sItems.store_storeListItems.id "
					+ "JOIN sItems.productDetail_storeListItems.product_proDetail p "
					+ "where p.id = :PID and "
					+ "sItems.productDetail_storeListItems.id = :PDID "
					+ "and sItems.quantity > 0";
			Query<Store> que = sessionFactory.getCurrentSession().createQuery(sql1, Store.class);
			
			que.setParameter("PID", 13);
			que.setParameter("PDID", 32);
			
			System.out.println("sdfsdfsdfsdfjsdlfkjsdlfkjsd");
			List<Store> stores = que.list();
			for(Store st: stores) {
				System.out.println("ssssssssssssssssss"+st.getName());
			}
		
		
		model.addAttribute("products", products);
		return "product-lists";
	}
}
