package com.traveltourismmanagementsystem.controller;

import com.traveltourismmanagementsystem.model.Tour;
import com.traveltourismmanagementsystem.model.Ticket;
import com.traveltourismmanagementsystem.model.User;
import com.traveltourismmanagementsystem.services.TourService;
import com.traveltourismmanagementsystem.services.TicketService;
import com.traveltourismmanagementsystem.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/ticket")
public class TicketController {
    @Autowired
    TourService tourService;

    @Autowired
    TicketService ticketService;

    @Autowired
    UserService userService;

    @GetMapping({"/reservation"})
    public ModelAndView reservation(@RequestParam int flightid, @RequestParam int userid, Model model, HttpSession session, HttpServletResponse response) {
        if (session.getAttribute("user") == null) {
            return new ModelAndView("redirect:/user/signin");
        } else {
            Tour tour = tourService.getFlightById(flightid);
            User user = userService.getUserById(userid);
            Ticket ticket = new Ticket();

            ticket.setTour(tour);
            ticket.setUser(user);

            ticketService.addTicket(ticket);

            return new ModelAndView("redirect:/user/mytickets?userid=" + userid);
        }
    }

    @GetMapping({"/reservationcancel"})
    public ModelAndView reservationcancel(@RequestParam int flightid, @RequestParam int userid, Model model, HttpSession session) {
        if (session.getAttribute("user") == null) {
            return new ModelAndView("redirect:/user/signin");
        } else {
            ticketService.deleteTicket(flightid);
            //flightService.deleteFlight(flightid);
            return new ModelAndView("redirect:/user/mytickets?userid=" + userid);
        }
    }
}
