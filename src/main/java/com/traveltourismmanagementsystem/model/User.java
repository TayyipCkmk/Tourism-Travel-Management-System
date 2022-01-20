package com.traveltourismmanagementsystem.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.*;

@Setter
@Getter
@Entity
@Table(name = "user")

public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name", nullable = false, length = 20)
    private String name;

    @Column(name = "surname", nullable = false, length = 20)
    private String surname;

    @Column(name = "username", nullable = false, length = 20)
    private String username;

    @Column(name = "email", nullable = false, length = 40)
    private String email;

    @Column(name = "password", nullable = false, length = 20)
    private String password;

}
