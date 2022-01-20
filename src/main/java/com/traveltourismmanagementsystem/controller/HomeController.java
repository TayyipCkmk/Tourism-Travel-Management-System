package com.traveltourismmanagementsystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {
    @RequestMapping("/")
    public String home(Model model, HttpSession session) {
        if(session.getAttribute("user") != null) {
            return "redirect:/user/flights";
        } else {
            return "home";
        }
    }
}
