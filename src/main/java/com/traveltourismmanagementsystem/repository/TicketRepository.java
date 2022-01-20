package com.traveltourismmanagementsystem.repository;

import com.traveltourismmanagementsystem.model.Ticket;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface TicketRepository extends CrudRepository <Ticket, Integer>{
    List<Ticket> findByUserId(int userid);
}
