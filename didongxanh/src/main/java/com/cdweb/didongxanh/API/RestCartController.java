package com.cdweb.didongxanh.API;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cdweb.didongxanh.Model.Cart;
import com.cdweb.didongxanh.Model.ProductDetail;
import com.cdweb.didongxanh.Service.ProductDetailService;

@Controller
@RequestMapping("API/")
@SessionAttributes({ "cart" })
public class RestCartController {

	@Autowired
	ProductDetailService productDetailService;

	@GetMapping("addToCart/{idProductDetail}")
	@ResponseBody
	public String addToCart(Model model, @PathVariable(name = "idProductDetail") int idProductDetail,
			HttpSession httpSession) {

		try {
			ProductDetail productDetail = this.productDetailService.getProductDetailById(idProductDetail);
			productDetail.getSpec_proDetail().getValByName("Bộ nhớ trong");
			if (httpSession.getAttribute("cart") == null) {
				List<Cart> carts = new ArrayList<Cart>();
				Cart cart = new Cart();
				cart.setProductDetail(productDetail);
				cart.setQuantity(1);
				cart.setTotalPrice(cart.getProductDetail().getPrice());

				carts.add(cart);
				httpSession.setAttribute("cart", carts);
			} else {
				List<Cart> list = (List<Cart>) httpSession.getAttribute("cart");
				// neu nhu sp chua co trong cart
				int index = ktTrungSP(productDetail.getId(), httpSession);

				if (index == -1) {
					Cart cart = new Cart();
					cart.setProductDetail(productDetail);
					cart.setQuantity(1);
					cart.setTotalPrice(cart.getProductDetail().getPrice());
					list.add(cart);
					httpSession.setAttribute("cart", list);
				}

				else {
					list.get(index).setQuantity(list.get(index).getQuantity() + 1);
					BigDecimal total =  list.get(index).getTotalPrice();
					int i = total.intValue() * 2;
					BigDecimal price = new BigDecimal(i);
					
					System.out.println("priceeeeeeeeeeeeee"+price);
					list.get(index).setTotalPrice(price);
					httpSession.setAttribute("cart", list);
				}

			}

			return "successed";
		} catch (Exception e) {
			return "failed";
		}

		
	}
	@GetMapping("updateCart")
	@ResponseBody
	private void updateCart(@RequestParam(name="idProductDetail") int idProductDetail,@RequestParam(name="quantity") int quantity,
			@RequestParam(name="totalPrice") BigDecimal totalPrice,HttpSession httpSession) {
		try {
			if (httpSession.getAttribute("cart") != null) {
				ProductDetail productDetail = this.productDetailService.getProductDetailById(idProductDetail);
				List<Cart> list = (List<Cart>) httpSession.getAttribute("cart");
				int index = ktTrungSP(productDetail.getId(), httpSession);

				if (index != -1) {
					list.get(index).setQuantity(quantity);
					list.get(index).setTotalPrice(totalPrice);
				}
				System.out.println("sl : "+list.get(index).getQuantity());
				System.out.println("total gia: "+list.get(index).getTotalPrice());
			}
			
		} catch (Exception e) {
		
		
		}
		
		
	}
	@GetMapping("deleteProductInCart/{idPD}")
	@ResponseBody
	private String deleteProductInCart(HttpSession httpSession,@PathVariable(name="idPD") int idPD) {
		try {
			List<Cart> list = (List<Cart>) httpSession.getAttribute("cart");	
			if (httpSession.getAttribute("cart") != null) {
				ProductDetail productDetail = this.productDetailService.getProductDetailById(idPD);
				
				int index = ktTrungSP(productDetail.getId(), httpSession);

				if (index != -1) {
					list.remove(index);
				}	
			}
			
			if(list.size() == 0) {
				return "empty";
			}
			
			return "success";
			
		} catch (Exception e) {
			return "error";
		}
	}
	

	private int ktTrungSP(int idPD, HttpSession httpSession) {
		List<Cart> list = (List<Cart>) httpSession.getAttribute("cart");
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getProductDetail().getId() == idPD) {
				return i;
			}
		}

		return -1;
	}
}
