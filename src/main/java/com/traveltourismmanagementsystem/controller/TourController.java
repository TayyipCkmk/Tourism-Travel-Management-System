package com.traveltourismmanagementsystem.controller;

import com.traveltourismmanagementsystem.model.Tour;
import com.traveltourismmanagementsystem.services.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;


@Controller

public class TourController {
    @Autowired
    TourService tourService;

    @PostMapping({"/create/tour"})
    public ModelAndView createFlightPost(@ModelAttribute Tour tour, HttpSession session, Model model) {
        if(session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            System.out.println(tour);
            tourService.addFlight(tour);
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("redirect:/admin");
        }
    }

    @GetMapping({"/create/tour"})
    public ModelAndView createFlight(HttpSession session, Model model) {
        if(session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("createflight");
        }
    }

    @GetMapping({"/cancel"})
    public ModelAndView cancelFlight(@RequestParam int id, HttpSession session, Model model) {
        if(session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            tourService.deleteFlight(id);
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("redirect:/admin");
        }
    }

    @PostMapping({"/update"})
    public ModelAndView updateFlightPost(@ModelAttribute Tour tour, @RequestParam int id, HttpSession session, Model model) {
        if(session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            tourService.updateFlight(tour, tour.getId());
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("redirect:/admin");
        }
    }

    @GetMapping({"/update"})
    public ModelAndView updateFlight(@RequestParam int id, HttpSession session, Model model) {
        if(session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            Tour item = tourService.getFlightById(id);
            model.addAttribute("admin", session.getAttribute("admin"));
            model.addAttribute("item", item);
            return new ModelAndView("updateflight");
        }
    }
}
