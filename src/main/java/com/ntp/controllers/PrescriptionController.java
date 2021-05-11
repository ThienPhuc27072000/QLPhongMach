package com.ntp.controllers;

import com.ntp.models.*;
import com.ntp.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.math.BigDecimal;
import java.util.UUID;

@Controller
@ControllerAdvice
@RequestMapping("/prescriptions")
public class PrescriptionController {
    @Autowired
    IToaThuocService iToaThuocService;
    @Autowired
    IThuocService iThuocService;
    @Autowired
    IChiTietToaThuocService iChiTietToaThuocService;
    @Autowired
    IBacSiService iBacSiService;
    @Autowired
    IBenhNhanService iBenhNhanService;
    @Autowired
    ILoaiBenhService iLoaiBenhService;

    @RequestMapping
    public String index(ModelMap model) {
        model.addAttribute("prescription", iToaThuocService.getAll(ToaThuoc.class));
        return "prescriptions";
    }

    @RequestMapping("/add-prescription")
    public String addPrescript(ModelMap model) {
        model.addAttribute("prescription", new ToaThuoc());
        model.addAttribute("doctors", iBacSiService.getAll(BacSi.class));
        model.addAttribute("patients", iBenhNhanService.getAll(BenhNhan.class));
        model.addAttribute("diseases", iLoaiBenhService.getAll(LoaiBenh.class));
        return "add-prescription";
    }

    @PostMapping("/add-prescription")
    public String addPrescription(@ModelAttribute("prescription") @Valid ToaThuoc toaThuoc,
                                  BindingResult result, ModelMap model) {
        if (!result.hasErrors()) {
            toaThuoc.setId(UUID.randomUUID().toString());
            iToaThuocService.insert(toaThuoc);
            return "redirect:/prescriptions";
        }

        model.addAttribute("doctors", iBacSiService.getAll(BacSi.class));
        model.addAttribute("patients", iBenhNhanService.getAll(BenhNhan.class));
        model.addAttribute("diseases", iLoaiBenhService.getAll(LoaiBenh.class));
        return "add-prescription";
    }

    @GetMapping("/details-prescription")
    public String detailsPrescription(@RequestParam("id")String id, ModelMap model) {
        model.addAttribute("prescription", iToaThuocService.getById(ToaThuoc.class, id));
        model.addAttribute("medicines", iThuocService.getAll(Thuoc.class));
        model.addAttribute("details", new ChiTietToaThuoc());
        return "details-prescription";
    }

    @PostMapping("/details-prescription")
    public String addDetails(@RequestParam("id")String id,
                             @ModelAttribute("details") @Valid ChiTietToaThuoc chiTietToaThuoc,
                             BindingResult result, ModelMap model) {
        if (!result.hasErrors()) {
            Thuoc thuoc = iThuocService.getById(Thuoc.class, chiTietToaThuoc.getThuoc().getId());
            chiTietToaThuoc.setDonGia(thuoc.getDonGia());
            chiTietToaThuoc.setThanhTien(thuoc.getDonGia().multiply(new BigDecimal(chiTietToaThuoc.getSoLuong())));
            ToaThuoc toaThuoc = iToaThuocService.getById(ToaThuoc.class, id);
            toaThuoc.getDsChiTietToaThuoc().forEach(t -> {
                if (t.getThuoc().getId() == thuoc.getId())
                    chiTietToaThuoc.setSoLuong(t.getSoLuong() + chiTietToaThuoc.getSoLuong());
            });
            try {
                iChiTietToaThuocService.update(chiTietToaThuoc);
                return "redirect:/prescriptions/details-prescription?id="+ id;
            }
            catch (Exception e) {
                e.printStackTrace();
            }
        }

        model.addAttribute("prescription", iToaThuocService.getById(ToaThuoc.class, id));
        model.addAttribute("medicines", iThuocService.getAll(Thuoc.class));
        return "details-prescription";
    }
}
