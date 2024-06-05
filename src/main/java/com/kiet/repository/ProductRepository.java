package com.kiet.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kiet.entity.*;

public interface ProductRepository  extends JpaRepository<Product, Integer>  {

}
