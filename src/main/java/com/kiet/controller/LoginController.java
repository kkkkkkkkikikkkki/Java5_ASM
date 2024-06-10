package com.kiet.controller;

import com.kiet.entity.Account;
import com.kiet.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    private AccountService accountService;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

//    @PostMapping("/login")
//    public String login(@RequestParam String username, @RequestParam String password, Model model) {
//        Account account = accountService.findByUsernameAndPassword(username, password);
//        if (account != null) {
//            // Successful login
//            return "redirect:/index";
//        } else {
//            // Failed login
//            model.addAttribute("error", "Invalid username or password.");
//            return "login";
//        }
//    }

//    @GetMapping("/index")
//    public String index() {
//        return "index";  // Ensure you have an index.jsp in the appropriate folder
//    }
}
