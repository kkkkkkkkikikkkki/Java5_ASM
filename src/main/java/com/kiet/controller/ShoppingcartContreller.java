package com.kiet.controller;

import com.kiet.entity.Product;
import com.kiet.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/home")
public class ShoppingcartContreller {

	@Autowired
	private ProductService productService;
	
	@GetMapping("cart")
	public String cart(Model model){

		// Lấy danh sách sản phẩm từ dịch vụ
		Product product = productService.getFirstProduct();
		// Thêm danh sách sản phẩm vào model
		model.addAttribute("product", product);
		// Trả về tên của trang JSP

		return "cart";
	}

	
}
