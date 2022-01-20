package com.traveltourismmanagementsystem.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@Entity
@Table(name = "ticket")
public class Ticket {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    @OneToOne
    @JoinColumn(name = "flight_id")
    private Tour tour;
}
