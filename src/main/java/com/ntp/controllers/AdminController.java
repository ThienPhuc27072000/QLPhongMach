package com.ntp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin")
public class AdminController {
    @RequestMapping()
    public String Test(Model model) {
        return "index-admin";
    }
}

