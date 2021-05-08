package com.ntp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.management.modelmbean.ModelMBeanOperationInfo;

@Controller
@RequestMapping("/payment")
public class PaymentController {

    @RequestMapping()
    public String Payment(Model model) {
        return "payments";
    }

    @RequestMapping("/add-payment")
    public String AddPayment(Model model) {
        return "add-payment";
    }

    @RequestMapping("patient-invoice")
    public String PatientInvoice(Model model) {
        return "patient-invoice";
    }
}
