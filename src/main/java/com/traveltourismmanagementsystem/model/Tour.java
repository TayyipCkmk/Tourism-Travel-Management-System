package com.traveltourismmanagementsystem.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@Entity
@Table(name = "tour")
public class Tour {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "fromLocation")
    private String fromLocation;

    @Column(name = "toFrom")
    private String toFrom;

    @Column(name = "date")
    private String date;

    @Column(name = "price", nullable = false)
    private int price;
}
