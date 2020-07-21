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

import com.cdweb.didongxanh.Model.Items;
import com.cdweb.didongxanh.Model.Product;
import com.cdweb.didongxanh.Model.ProductDetail;
import com.cdweb.didongxanh.Model.Spec;
import com.cdweb.didongxanh.Model.Store;
import com.cdweb.didongxanh.Service.ProductDetailService;
import com.cdweb.didongxanh.Service.ProductService;
import com.cdweb.didongxanh.Service.StoreService;

@Controller
public class ProductDetailController {
	@Autowired
	ProductService productService;
	@Autowired
	ProductDetailService productDetailService;

	@Autowired
	StoreService storeService;

	@RequestMapping("/chitiet/{id}")
	public String productDetail(Model model, @PathVariable(name = "id") int id) {
		Product product = this.productService.getProductById(id);
		Items item = product.getItem();

		Set<ProductDetail> productDetails = product.getProductDetails();
		List<ProductDetail> proDetailList = new ArrayList<>();
		for (ProductDetail pd : productDetails) {
			proDetailList.add(pd);
		}

		// lay ra ds các capacity của từng ProductDetail

		// lay ra ds các capacity của từng spec
		Set<Spec> specs = new HashSet<>();
		List<Spec> specLists = new ArrayList<>();

		Set<Spec> got = new HashSet<>();

		for (ProductDetail pd : proDetailList) {

			if (!got.contains(pd.getSpec_proDetail())) {
				pd.getSpec_proDetail().getValByName("Bộ nhớ trong");
				pd.getSpec_proDetail()
						.setGotPriceMin(this.productDetailService.GetLowestPrice(pd.getSpec_proDetail().getId()));
				specs.add(pd.getSpec_proDetail());

				System.out.println(pd.getSpec_proDetail().getGotPriceMin());
			}

			got.add(pd.getSpec_proDetail());

		}

		// lay spec co capacity nho nhat
		Spec sp = proDetailList.get(0).getSpec_proDetail();
		for (int i = 1; i < proDetailList.size(); i++) {

			if (Integer.parseInt(sp.getGotValue()) > Integer
					.parseInt(proDetailList.get(i).getSpec_proDetail().getGotValue())) {
				sp = proDetailList.get(i).getSpec_proDetail();

			}
		}

		// lay productdetail cua cái spec co câpcity nho nhất
		List<ProductDetail> productDetailLists = new ArrayList<>();

		for (ProductDetail pde : proDetailList) {
			if (pde.getSpec_proDetail().getId() == sp.getId()) {
				productDetailLists.add(pde);
			}

		}

		// sap sep spec
		for (Spec s : specs) {
			specLists.add(s);
		}

		sortSpecs(specLists);

		System.out.println("idddddddddddddddddddddspec" + sp.getId());

		sortProductDetail(productDetailLists);

		int firstIdPD = 0;

		for (ProductDetail pd : productDetailLists) {
			List<Store> stores = this.storeService.listStore(product.getId(), pd.getId());
			int state = 0;
			if (stores.size() != 0) {
				state = 1;

				pd.setState(state);
				firstIdPD = pd.getId();
				break;	
			}

		}

		System.out.println(firstIdPD);
		model.addAttribute("productDetailForDisplay", productDetails);
		model.addAttribute("productDetail", productDetailLists);
		model.addAttribute("product", product);
		model.addAttribute("specs", specLists);
		model.addAttribute("firstIdSpec", specLists.get(0).getId());
		model.addAttribute("firstIdPD", firstIdPD);
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
				return Integer.parseInt(o1.getGotValue()) - Integer.parseInt(o2.getGotValue());
			}

		});
	}

}