package com.traveltourismmanagementsystem.services;

import com.traveltourismmanagementsystem.model.Ticket;
import com.traveltourismmanagementsystem.repository.TicketRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TicketServiceImplementation implements TicketService{
    @Autowired
    TicketRepository ticketRepository;

    @Override
    public List<Ticket> getAllTicket() {
        return (List<Ticket>) ticketRepository.findAll();
    }

    @Override
    public Ticket getTicketById(int id) {
        return ticketRepository.findById(id).get();
    }

    @Override
    public void addTicket(Ticket ticket) {
        ticketRepository.save(ticket);
    }

    @Override
    public void deleteTicket(int id) {
        ticketRepository.deleteById(id);
    }


    @Override
    public List<Ticket> getByUserIdTickets(int id) {
        List<Ticket> list = ticketRepository.findByUserId(id);

        return list;
    }

}
