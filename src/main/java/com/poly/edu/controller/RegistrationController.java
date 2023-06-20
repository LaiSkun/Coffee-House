package com.poly.edu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.edu.services.ShoppingCartService;

@Controller
public class RegistrationController {
	@Autowired
	ShoppingCartService cart; 
	@RequestMapping("/registration")
	public String registration(Model model) {	
		model.addAttribute("Count", cart.getCount());
		return "registration";
	}
}
