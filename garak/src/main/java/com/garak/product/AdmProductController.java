package com.garak.product;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdmProductController {
	
	@RequestMapping("/adm/product/list")
	public String goProductList(Model model){
		return "adm/product/productList";
	}
	
	@RequestMapping("/adm/product/edit")
	public String goProductEdit(Model model){
		return "adm/product/productEdit";
	}
	
}
