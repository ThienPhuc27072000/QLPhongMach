package com.ntp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/report")
public class ReportController {

    @RequestMapping("/payment-report")
    public String PaymentReport(Model model) {
        return "payment-report";
    }

    @RequestMapping("/income-report")
    public String IncomeReport(Model model) {
        return "income-report";
    }

    @RequestMapping("/sales-report")
    public String SalesReport(Model model) {
        return "sales-report";
    }
}
