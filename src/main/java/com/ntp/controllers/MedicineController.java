package com.ntp.controllers;

import com.ntp.models.Thuoc;
import com.ntp.service.IThuocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Controller
@RequestMapping("/medicines")
public class MedicineController {
    @Autowired
    IThuocService iThuocService;

    @RequestMapping()
    public String medicine(Model model) {
        model.addAttribute("medicines", iThuocService.getAll(Thuoc.class));
        return "medicines";
    }

    @GetMapping("/add-medicine")
    public String addMedicine(Model model) {
        model.addAttribute("medicine", new Thuoc());
        return "add-medicine";
    }


    @PostMapping("/add-medicine")
    public String addMedicinePost(@ModelAttribute("medicine") Thuoc thuoc) {
        thuoc.setId(iThuocService.getAll(Thuoc.class).size()+1);
        Thuoc t = iThuocService.insert(thuoc);
        if (t != null)
            return "redirect:/medicines/";
        return "add-medicine";
    }

    @GetMapping("/edit-medicine")
    public String editPatient(@RequestParam("id") Integer Id, Model model) {
        model.addAttribute("medicine", iThuocService.getById(Thuoc.class, Id));
        return "edit-medicine";
    }

    @PostMapping("/edit-medicine")
    public String editMedicinePost(@ModelAttribute("medicine")Thuoc thuoc) {
        Thuoc t = iThuocService.update(thuoc);
        if (t != null)
            return "redirect:/medicines/";
        return "edit-medicine";
    }

    @PostMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteMedicine(@PathVariable("id")Integer Id) {
        Thuoc thuoc = iThuocService.getById(Thuoc.class,Id);
        iThuocService.delete(thuoc);
    }



}
