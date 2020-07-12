package com.cdweb.didongxanh.Controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cdweb.didongxanh.Model.Product;
import com.cdweb.didongxanh.Model.ProductDetail;
import com.cdweb.didongxanh.Model.Spec;
import com.cdweb.didongxanh.Service.ProductDetailService;
import com.cdweb.didongxanh.Service.ProductService;

@Controller
public class ProductDetailController {
	@Autowired
	ProductService productService;
	@Autowired
	ProductDetailService productDetailService;

	@RequestMapping("/chitiet/{id}")
	public String productDetail(Model model, @PathVariable(name = "id") int id) {
		Product product = this.productService.getProductById(id);

		Set<ProductDetail> productDetails = product.getProductDetails();
		List<ProductDetail> proDetailList = new ArrayList<>();
		for (ProductDetail pd : productDetails) {
			proDetailList.add(pd);
		}
		
        // lay ra ds các capacity của từng ProductDetail	
		
		Set<Spec> specs = new HashSet<>();
		List<Spec> specLists = new ArrayList<>();

		Set<Spec> got = new HashSet<>();
		
		for (ProductDetail pd : proDetailList) {
		
			
			if (!got.contains(pd.getSpec_proDetail())) {
				pd.getSpec_proDetail().setGotCapacity(pd.getCapacity());
				pd.getSpec_proDetail().setGotPriceMin(this.productDetailService.GetLowestPrice(pd.getCapacity(),product.getId()));			
			
			specs.add(pd.getSpec_proDetail());
				
			}
			
			got.add(pd.getSpec_proDetail());
		

		}

		// lay capacity nho nhat cua tat ca nhung sp con cua product
		int lowestCapacity = proDetailList.get(0).getCapacity();
		for (int i = 1; i < proDetailList.size(); i++) {

			if ((lowestCapacity) > (proDetailList.get(i).getSpec_proDetail().getGotCapacity())) {
				lowestCapacity = proDetailList.get(i).getCapacity();
			}
		}

		// lay productdetail cua cái câpcity nho nhất
		List<ProductDetail> productDetailLists = new ArrayList<>();

		for (ProductDetail pde : proDetailList) {
			if (pde.getCapacity() == lowestCapacity ) {
				productDetailLists.add(pde);
			}

		}


		// sap sep spec
				for (Spec s : specs) {
					specLists.add(s);
				}

				sortSpecs(specLists);
	
		sortProductDetail(productDetailLists);
		model.addAttribute("productDetail", productDetailLists);
		model.addAttribute("productDetailForDisplay", productDetails);
		model.addAttribute("product", product);
		model.addAttribute("specs", specLists);

		return "product-detail";
	}

	public void sortProductDetail(List<ProductDetail> productDetails) {
		Collections.sort(productDetails, new Comparator<ProductDetail>() {

			@Override
			public int compare(ProductDetail o1, ProductDetail o2) {
				return o1.getId() - o2.getId();
			}

		});
	}

	public void sortSpecs(List<Spec> specs) {
		Collections.sort(specs, new Comparator<Spec>() {

			@Override
			public int compare(Spec o1, Spec o2) {
				return o1.getGotCapacity() - o2.getGotCapacity();
			}

		});
	}

}