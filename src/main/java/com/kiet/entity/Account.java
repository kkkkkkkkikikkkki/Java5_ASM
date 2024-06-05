package com.kiet.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity(name = "Accounts")
public class Account {

    @Id
    private String username;

    @Column(name = "Password")
    private String password;

    @Column(name = "Fullname")
    private String fullname;

    @Column(name = "Email")
    private String email;

    @Column(name = "Photo")
    private String photo;

    @Column(name = "Activated")
    private boolean activated;

    @Column(name = "Admin")
    private boolean admin;

    @OneToMany(mappedBy = "account")
    private List<Order> orders;
}
