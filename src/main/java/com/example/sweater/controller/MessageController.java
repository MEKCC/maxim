package com.example.sweater.controller;

import com.example.sweater.domain.Message;
import com.example.sweater.domain.User;
import com.example.sweater.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/message")
public class MessageController {

    @Autowired
    private MessageRepo messageRepo;

    @GetMapping
    public String main(Model model) {
        model.addAttribute("messages", messageRepo.findAll());
        return "messages";
    }

    @PostMapping
    public String add(@AuthenticationPrincipal User user,
                      @RequestParam String text, Model model) {
        Message message = new Message(text, user);
        messageRepo.save(message);
        model.addAttribute("messages", messageRepo.findAll());
        return "messages";
    }
}
