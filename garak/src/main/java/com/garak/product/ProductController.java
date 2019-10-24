package com.garak.product;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
		
	@RequestMapping("/product/list")
	public String goProductList(Model model){
		return "product/productList";
	}
	
	@RequestMapping("/product/view")
	public String goProductView(Model model){
		return "product/productView";
	}
	
}
