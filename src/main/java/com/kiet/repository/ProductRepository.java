package com.kiet.repository;


import com.kiet.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository  extends JpaRepository<Product, Integer>  {
    Product findFirstByOrderByIdAsc();
}
