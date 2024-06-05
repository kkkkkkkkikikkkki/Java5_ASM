package com.kiet.entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity(name = "Products") // This should match the table name exactly
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "Names")
    private String name;

    @Column(name = "Images")
    private String image;

    @Column(name = "Price")
    private double price;

    @Column(name = "Available")
    private boolean available;
    
    // Relationship with OrderDetail
    @OneToMany(mappedBy = "product")
    private List<OrderDetail> orderDetails;
}
