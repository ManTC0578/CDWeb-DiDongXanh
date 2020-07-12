package com.cdweb.didongxanh.API;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cdweb.didongxanh.Model.Product;
import com.cdweb.didongxanh.Model.ProductDetail;
import com.cdweb.didongxanh.Model.Spec;
import com.cdweb.didongxanh.Model.Store;
import com.cdweb.didongxanh.Service.ProductDetailService;
import com.cdweb.didongxanh.Service.ProductService;
import com.cdweb.didongxanh.Service.StoreService;
import com.google.common.net.MediaType;

@Controller
@RequestMapping("API/")
public class RestProductController {
	@Autowired
	ProductService productService;
	@Autowired
	ProductDetailService productDetailService;
	
	@Autowired
	StoreService storeService;

	@RequestMapping(value = "getProduct", method = RequestMethod.GET, produces = org.springframework.http.MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<ProductDetail> getProduct(@RequestParam int product_id, @RequestParam int capacity) {

		Product product = this.productService.getProductById(product_id);

		ArrayList<ProductDetail> productDetails = new ArrayList<>();

		ProductDetail productDetail;
		for (ProductDetail pd : product.getProductDetails()) {
			
			if (pd.getCapacity() == capacity) {
				List<Store> stores = this.storeService.listStore(product.getId(), pd.getId());
				int state = 1;
				if(stores.size() == 0) {
					state = 0;
				}
				productDetail = new ProductDetail(pd.getId(), pd.getColor_proDetail(), pd.getPrice(), 
						pd.getImg_url(), pd.getActiveFlag(), pd.getCreateDate(), pd.getUpdateDate(),state);
				
				productDetails.add(productDetail);
			}
		}
		sortProductDetail(productDetails);

		return productDetails;
	}

	@RequestMapping(value = "getImgProductDetail/{id}", method = RequestMethod.GET,produces = org.springframework.http.MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ProductDetail getImgProductDetail(@PathVariable(name = "id") int id) {
		ProductDetail pd = this.productDetailService.getProductDetailById(id);
         
		ProductDetail pro =  new ProductDetail(pd.getId(), pd.getColor_proDetail(), pd.getPrice(), 
				pd.getImg_url(), pd.getActiveFlag(), pd.getCreateDate(), pd.getUpdateDate());
	
		return pro;
	}


	@RequestMapping(value = "getStoreHaveProduct", method = RequestMethod.GET,produces = org.springframework.http.MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Store> getStoreHaveProduct(@RequestParam int proId, @RequestParam int ProDetailId) {
		
		List<Store> list = new ArrayList<>();
		List<Store> stores = this.storeService.listStore(proId, ProDetailId);
		
		for(Store sto: stores) {
			list.add(new Store(sto.getId(), sto.getAddress(), sto.getName(), sto.getActiveFlag(),sto.getCreateDate(), sto.getUpdateDate()));
		}
		
		return list;
	}

	
	public void sortProductDetail(List<ProductDetail> productDetails) {
		Collections.sort(productDetails, new Comparator<ProductDetail>() {

			@Override
			public int compare(ProductDetail o1, ProductDetail o2) {
				return o1.getId() - o2.getId();
			}

		});
	}
}
