package com.ntp.controllers;

import com.ntp.enums.Order;
import com.ntp.models.*;
import com.ntp.service.*;
import com.ntp.viewmodel.Appointment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;


@Controller
public class HomeController {
    @Autowired
    IBenhNhanService iBenhNhanService;
    @Autowired
    IPhieuKhamBenhService iPhieuKhamBenhService;
    @Autowired
    IBacSiService iBacSiService;
    @Autowired
    ICaKhamBenhService iCaKhamBenhService;
    @Autowired
    ILoaiBenhService iLoaiBenhService;

    @RequestMapping("/")
    public String test(ModelMap model) {
        model.addAttribute("appointment", new Appointment());
        model.addAttribute("doctors", iBacSiService.getAll(BacSi.class));
        model.addAttribute("shifts", iCaKhamBenhService.getAll(CaKhamBenh.class));
        model.addAttribute("diseases", iLoaiBenhService.getAll(LoaiBenh.class));
        return "baseLayout";
    }

    @PostMapping("/")
    public String booking(@ModelAttribute("appointment") @Valid Appointment appointment,
                          BindingResult result) throws ParseException {
        if (!result.hasErrors()) {
            SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");

            BenhNhan benhNhan = new BenhNhan();
            benhNhan.setId(UUID.randomUUID().toString());
            benhNhan.setTen(appointment.getTen());
            benhNhan.setHo(appointment.getHo());
            benhNhan.setGioiTinh(appointment.getGioiTinh());
            benhNhan.setNgaySinh(format.parse(appointment.getNgaySinh()));
            benhNhan.setDienThoai(appointment.getDienThoai());

            BenhNhan b = iBenhNhanService.insert(benhNhan);

            PhieuKhamBenh phieuKhamBenh = new PhieuKhamBenh();
            // lay id lon nhat cong them 1
            phieuKhamBenh.setId(iPhieuKhamBenhService.getAllOrderBy(PhieuKhamBenh.class, "id",
                    Order.DESC).get(0).getId() + 1);
            phieuKhamBenh.setBenhNhan(b);
            phieuKhamBenh.setCaKhamBenh(appointment.getCaKham());
            phieuKhamBenh.setNgayKham(format.parse(appointment.getNgayKham()));
            phieuKhamBenh.setThanhToan(false);
            Set<LoaiBenh> loaiBenhs = new HashSet<>();
            loaiBenhs.add(appointment.getLoaiBenh());
            phieuKhamBenh.setDsLoaiBenh(loaiBenhs);
            phieuKhamBenh.setThanhToan(false);
            phieuKhamBenh.setDiaChi("371 Nguyen Kiem");

            PhieuKhamBenh p = iPhieuKhamBenhService.insert(phieuKhamBenh);

            if (p != null)
                return "redirect:/" ;
        }
        return "baseLayout";
    }

}

