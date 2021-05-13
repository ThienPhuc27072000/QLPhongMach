package com.ntp.controllers;

import com.cloudinary.utils.ObjectUtils;
import com.ntp.models.BacSi;
import com.ntp.models.BenhNhan;
import com.ntp.models.Role;
import com.ntp.models.TaiKhoan;
import com.ntp.service.IBacSiService;
import com.ntp.service.INhanVienService;
import com.ntp.service.IRoleService;
import com.ntp.service.ITaiKhoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

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
    IRoleService iRoleService;

    @Autowired
    BCryptPasswordEncoder cryptPasswordEncoder;

    @RequestMapping()
    public String account(ModelMap model) {
//        System.out.println(cryptPasswordEncoder.encode("123"));
        model.addAttribute("account", iTaiKhoanService.getAll(TaiKhoan.class));
        return "accounts";
    }

    @GetMapping("/add-account")
    public String addAccount(Model model) {
        model.addAttribute("role", iRoleService.getAll(Role.class));
        model.addAttribute("account", new TaiKhoan());
        return "add-account";
    }

    @PostMapping("/add-account")
    public String addAccountPost(@ModelAttribute("account")TaiKhoan taiKhoan) {
        taiKhoan.setId(UUID.randomUUID().toString());
        System.out.println(taiKhoan.getUsername());
        TaiKhoan t = iTaiKhoanService.insert(taiKhoan);
        if (t != null)
            return "redirect:/accounts/";
        return "add-account";
    }

}
