package com.ntp.controllers;

import com.ntp.models.BacSi;
import com.ntp.models.TaiKhoan;
import com.ntp.service.IBacSiService;
import com.ntp.service.INhanVienService;
import com.ntp.service.ITaiKhoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@ControllerAdvice
@RequestMapping("/accounts")
public class AccountController {
//    @Autowired
//    IBacSiService iBacSiService;
//
//    @Autowired
//    INhanVienService iNhanVienService;

    @Autowired
    ITaiKhoanService iTaiKhoanService;

    @Autowired
    BCryptPasswordEncoder cryptPasswordEncoder;

    @RequestMapping()
    public String account(ModelMap model) {
//        System.out.println(cryptPasswordEncoder.encode("123"));
        model.addAttribute("accounts", iTaiKhoanService.getAll(TaiKhoan.class));
        return "accounts";
    }
}
