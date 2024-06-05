package com.kiet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.ui.Model;

import java.util.List;

import com.kiet.service.ProductService;
import com.kiet.entity.*;

@Controller
@RequestMapping("/home/")
public class ProductController {
	
    @Autowired
    private ProductService productService;

    // Get all Product
//    @GetMapping("all")
//    public ResponseEntity<List<Product>> getAllProduct() {
//        List<Product> products = productService.getAllProducts();
//        return ResponseEntity.ok(products);
//    }
	
   //  Get all Products and display on the home page
    @GetMapping("index")
    public String getAllProducts(Model model) {
        List<Product> products = productService.getAllProducts();
        model.addAttribute("products", products);
        return "index"; // return the name of the view (home.jsp)
    }




}
