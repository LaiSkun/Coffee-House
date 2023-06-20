package com.poly.edu.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.edu.cart.CartService;
import com.poly.edu.dao.CategoryDAO;
import com.poly.edu.dao.ProductDAO;
import com.poly.edu.entities.Category;
import com.poly.edu.entities.Product;
import com.poly.edu.services.CatelogyService;
import com.poly.edu.services.ProductService;
import com.poly.edu.services.SessionService;
import com.poly.edu.services.ShoppingCartService;

@Controller

public class ProductController {
	@Autowired
	ProductDAO dao;

	@Autowired
	CategoryDAO catedao;

	@Autowired
	CatelogyService cateService;

	@Autowired
	ProductService productService;
	
	@Autowired
	ShoppingCartService cart; 
	
	@RequestMapping("/product/collection/all")
	public String pageNate(Model model,@RequestParam Optional<String> categoryId, @RequestParam("page") Optional<Integer> page) {
		Pageable pageable = PageRequest.of(page.orElse(0), 9);
		Page<Product> pages = dao.findAll(pageable);
		model.addAttribute("page",pages);
		
		model.addAttribute("listDM", catedao.findAll());
		model.addAttribute("Count", cart.getCount());
		return "pagination";
	}

	@RequestMapping("/product/collection/{maDM}")
	public String doGetSPByMaDM(@PathVariable("maDM") String madm, Model model) {
		List<Product> listSP = productService.findByMaDM(madm);
		model.addAttribute("listSP", listSP);
		List<Category> listDM = cateService.findAll();
		model.addAttribute("listDM", listDM);
		model.addAttribute("Count", cart.getCount());
		return "menu";
	}

	@RequestMapping("products/{maSP}")
	public String doGetSPByMaSP(@RequestParam("maSP") String masp, Model model) {
		Product product = productService.findByMaSP(masp);
		model.addAttribute("product", product);
		List<Category> listDM = cateService.findAll();
		model.addAttribute("listDM", listDM);
		return "/menu/menu";
	}

}
