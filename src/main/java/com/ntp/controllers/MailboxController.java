package com.ntp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("inbox")
public class MailboxController {

    @RequestMapping()
    public String Inbox(Model model) {
        return "inbox";
    }

    @RequestMapping("/inbox-detail")
    public String InboxDetail(Model model) {
        return "inbox-detail";
    }

    @RequestMapping("/compose")
    public String Compose(Model model) {
        return "compose";
    }
}
