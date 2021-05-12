package com.ntp.controllers;

import com.ntp.models.HoaDon;
import com.ntp.models.NhanVien;
import com.ntp.models.ToaThuoc;
import com.ntp.service.IHoaDonService;
import com.ntp.service.INhanVienService;
import com.ntp.service.IToaThuocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.math.BigDecimal;
import java.util.UUID;

@Controller
@RequestMapping("/invoices")
public class InvoiceController {
    @Autowired
    IHoaDonService iHoaDonService;
    @Autowired
    INhanVienService iNhanVienService;
    @Autowired
    IToaThuocService iToaThuocService;

    @GetMapping()
    public String index(ModelMap model) {
        model.addAttribute("invoices", iHoaDonService.getAll(HoaDon.class));
        return "invoices";
    }

    @GetMapping("/add-invoice")
    public String addView(ModelMap model) {
        model.addAttribute("invoice", new HoaDon());
        model.addAttribute("employee", iNhanVienService.getAll(NhanVien.class));
        model.addAttribute("prescription", iToaThuocService.getAll(ToaThuoc.class));
        return "add-invoice";
    }

    @PostMapping("/add-invoice")
    public String addProcess(@ModelAttribute("invoice") @Valid HoaDon hoaDon,
                             BindingResult result, ModelMap model) {
        if (!result.hasErrors()) {
            final BigDecimal[] total = {new BigDecimal(0)};
            ToaThuoc toaThuoc = iToaThuocService.getById(ToaThuoc.class, hoaDon.getToaThuoc().getId());
            toaThuoc.getDsChiTietToaThuoc().forEach(ct -> {
                total[0] = total[0].add(ct.getThanhTien());
            });
            total[0] = total[0].add(toaThuoc.getLoaiBenh().getDonGia());
            hoaDon.setId(UUID.randomUUID().toString());
            hoaDon.setTongTien(total[0]);
            HoaDon hoaDon1 = iHoaDonService.insert(hoaDon);
            if(hoaDon1 != null)
                return "redirect:/invoices";
        }

        model.addAttribute("employee", iNhanVienService.getAll(NhanVien.class));
        model.addAttribute("prescription", iToaThuocService.getAll(ToaThuoc.class));
        return "add-invoice";
    }
}
