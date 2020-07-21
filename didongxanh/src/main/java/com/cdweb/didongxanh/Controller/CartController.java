package com.cdweb.didongxanh.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cdweb.didongxanh.Model.Cart;
import com.cdweb.didongxanh.Model.ProductDetail;

@Controller
@SessionAttributes({ "cart" })
public class CartController {

	@RequestMapping("/shopping-cart")
	public String shoppingCart(Model model,HttpSession httpSession) {
		List<Cart> list = (List<Cart>) httpSession.getAttribute("cart");
		if(!list.isEmpty()) {	
			model.addAttribute("carts", list);	
		}
		
		return "shopping-cart";
	}
}
