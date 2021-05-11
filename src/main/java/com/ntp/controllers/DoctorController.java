package com.ntp.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.ntp.models.BacSi;
import com.ntp.models.TaiKhoan;
import com.ntp.service.IBacSiService;
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
@RequestMapping("/doctors")
public class DoctorController {
    @Autowired
    IBacSiService iBacSiService;
    @Autowired
    ITaiKhoanService iTaiKhoanService;

    @Autowired
    Cloudinary cloudinary;

    @ModelAttribute
    public void modelAttribute(Model model) {
        model.addAttribute("account", iTaiKhoanService.layTaiKhoanBacSiConTrong());
    }

    @RequestMapping()
    public String index(ModelMap model) {
        model.addAttribute("doctors", iBacSiService.getAll(BacSi.class));
        return "doctors";
    }

    @GetMapping("/add-doctor")
    public String addDoctor(Model model){
        model.addAttribute("doctor", new BacSi());
        return "add-doctor";
    }

    @PostMapping("/add-doctor")
    public String addDoctorProcess(@ModelAttribute("doctor") @Valid BacSi bacSi, BindingResult result) {
        Map upload = new HashMap();
        MultipartFile img = bacSi.getImg();
        String path = "";
        if(img != null && !img.isEmpty()) {
            try {
                upload = cloudinary.uploader().upload(img.getBytes(), ObjectUtils.asMap(
                        "public_id", "my_folder/" + bacSi.getTen()));
                path = upload.get("url").toString();
                bacSi.setImage(path);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        if (!result.hasErrors()) {
            try {
                bacSi.setImage(path);
                iBacSiService.insert(bacSi);
                return "redirect:/doctors/";
            }
            catch (Exception e) {
                e.printStackTrace();
            }
        }
       return "add-doctor";
    }

    @GetMapping("/edit-doctor")
    public String DoctorEdit(@RequestParam("id")String id, Model model) {
        BacSi bacSi = iBacSiService.getById(BacSi.class, id);
        model.addAttribute("doctor", bacSi);
        return "edit-doctor";
    }

    @PostMapping("/edit-doctor")
    public String DoctorEditProcess(@RequestParam("id")String id,
                                    @ModelAttribute("doctor") @Valid BacSi bacSi,
                                    BindingResult result) {
        if (!result.hasErrors()) {
            try {
                bacSi.setImage("vidu");
                iBacSiService.update(bacSi);
                return "redirect:/doctors/";
            }
            catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "edit-doctor";
    }

    @PostMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteMedicine(@PathVariable("id")String Id) {
        BacSi bacSi = iBacSiService.getById(BacSi.class,Id);
        iBacSiService.delete(bacSi);
    }

    @RequestMapping("/doctor-profile")
    public String ProfileDoctor(Model model) {
        return "doctor-profile";
    }

    @RequestMapping("/doctor-schedule")
    public String DoctorSchedule(Model model) {
        return "doctor-schedule";
    }

    @RequestMapping("/book-appointment")
    public String BookAppointment(Model model) {
        return "book-appointment";
    }
}
