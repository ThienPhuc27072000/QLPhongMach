package com.ntp.controllers;


import com.ntp.models.BenhNhan;
import com.ntp.service.IBenhNhanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Controller
@RequestMapping("/patients")
public class PatientController {
    @Autowired
    IBenhNhanService iBenhNhanService;

    @RequestMapping()
    public String index(Model model) {
        model.addAttribute("patients", iBenhNhanService.getAll(BenhNhan.class));
        return "patients";
    }

    @GetMapping("/add-patient")
    public String addPatient(Model model) {
        model.addAttribute("patient", new BenhNhan());
        return "add-patient";
    }

    @PostMapping("/add-patient")
    public String addPatientPost(@ModelAttribute("patient")BenhNhan benhNhan) {
        benhNhan.setId(UUID.randomUUID().toString());
        BenhNhan b = iBenhNhanService.insert(benhNhan);
        if (b != null)
            return "redirect:/patients/";
        return "add-patient";
    }

    @GetMapping("/edit-patient")
    public String editPatient(@RequestParam("id") String Id,  Model model) {
        model.addAttribute("patient", iBenhNhanService.getById(BenhNhan.class, Id));
        return "edit-patient";
    }

    @PostMapping("/edit-patient")
    public String editPatientPost(@ModelAttribute("patient")BenhNhan benhNhan) {
        BenhNhan b = iBenhNhanService.update(benhNhan);
        if (b != null)
            return "redirect:/patients/";
        return "edit-patient";
    }

    @PostMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deletePatient(@PathVariable("id")String Id) {
       BenhNhan benhNhan = iBenhNhanService.getById(BenhNhan.class,Id);
       iBenhNhanService.delete(benhNhan);
    }


    @RequestMapping("/patient-invoice")
    public String InvoicePatient(Model model) {
        return "patient-invoice";
    }

    @RequestMapping("/patient-profile")
    public String ProfilePatient(Model model) {
        return "patient-profile";
    }
}
