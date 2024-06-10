package com.kiet.service;

import com.kiet.entity.Product;
import com.kiet.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    public Product getFirstProduct() {
        return productRepository.findFirstByOrderByIdAsc();
    }
}
