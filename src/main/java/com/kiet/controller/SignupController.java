package com.kiet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home/")
public class SignupController {
	@GetMapping("SignUp")
	public String Signup() {
		return "signup";
	}
}
