package com.traveltourismmanagementsystem.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.*;

@Setter
@Getter
@Entity
@Table(name = "admin")

public class Admin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "username", nullable = false, length = 20, unique = true)
    private String username;

    @Column(name = "email", nullable = false, length = 40, unique = true)
    private String email;

    @Column(name = "password", nullable = false, length = 20)
    private String password;

    @Column(name = "role", nullable = false, length = 20)
    private String role;
}
