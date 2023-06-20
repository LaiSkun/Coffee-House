package com.poly.edu.controller;



import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.edu.dao.ProductDAO;
import com.poly.edu.entities.Product;
import com.poly.edu.services.ProductService;
import com.poly.edu.services.ShoppingCartService;

@Controller
public class HomeController {
	@Autowired
	ShoppingCartService cart; 
	@Autowired
	ProductDAO dao;

	@RequestMapping("/home")
	public String home(@RequestParam("page") Optional<Integer> page,Model model) {
		Pageable pageable = PageRequest.of(page.orElse(0), 6);
		Page<Product> pages = dao.findAll(pageable);
		model.addAttribute("page",pages);
		model.addAttribute("Count", cart.getCount());
		return "index";
	}
}
