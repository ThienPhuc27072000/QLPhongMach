package com.ntp.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.ntp.models.NhanVien;
import com.ntp.models.TaiKhoan;
import com.ntp.service.INhanVienService;
import com.ntp.service.ITaiKhoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
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

@Controller
@ControllerAdvice
@RequestMapping("/employees")
public class EmployeeController {
    @Autowired
    INhanVienService iNhanVienService;
    @Autowired
    ITaiKhoanService iTaiKhoanService;
    @Autowired
    Cloudinary cloudinary;

    @ModelAttribute
    public void modelAttribute(Model model) {
        model.addAttribute("account", iTaiKhoanService.layTaiKhoanNhanVienConTrong());
    }

    @RequestMapping()
    public String index(ModelMap model) {
        model.addAttribute("employees", iNhanVienService.getAll(NhanVien.class));
        return "employees";
    }

    @GetMapping("/add-employee")
    public String addEmployee(Model model){
        model.addAttribute("employee", new NhanVien());
        return "add-employee";
    }

    @PostMapping("/add-employee")
    public String addEmployeeProcess(@ModelAttribute("employee") @Valid NhanVien nhanVien, BindingResult result) {
        Map upload = new HashMap();
        MultipartFile img = nhanVien.getImg();
        String path = "";
        if(img != null && !img.isEmpty()) {
            try {
                upload = cloudinary.uploader().upload(img.getBytes(), ObjectUtils.asMap(
                        "public_id", "my_folder/" + nhanVien.getTen()));
                path = upload.get("url").toString();
                nhanVien.setImage(path);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (!result.hasErrors()) {
            try {
                nhanVien.setImage(path);
                iNhanVienService.insert(nhanVien);
                return "redirect:/employees/";
            }
            catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "add-employee";
    }

    @GetMapping("/edit-employee")
    public String EmployeeEdit(@RequestParam("id")String id, Model model) {
        NhanVien nhanVien = iNhanVienService.getById(NhanVien.class, id);
        model.addAttribute("employee", nhanVien);
        return "edit-employee";
    }

    @PostMapping("/edit-employee")
    public String EmployeeEditProcess(@RequestParam("id")String id,
                                    @ModelAttribute("employee") @Valid NhanVien nhanVien,
                                    BindingResult result) {
        if (!result.hasErrors()) {
            try {
                nhanVien.setImage("vidu");
                iNhanVienService.update(nhanVien);
                return "redirect:/employees/";
            }
            catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "edit-employee";
    }

    @PostMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteMedicine(@PathVariable("id")String Id) {
        NhanVien nhanVien = iNhanVienService.getById(NhanVien.class,Id);
        iNhanVienService.delete(nhanVien);
    }
}
