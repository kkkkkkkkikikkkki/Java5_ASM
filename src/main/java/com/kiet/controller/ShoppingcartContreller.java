package com.kiet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home/")
public class ShoppingcartContreller {
	@GetMapping("/cart")
	public String cart(){
		return "cart";
	}
}
