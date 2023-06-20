package com.poly.edu.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.edu.dao.CategoryDAO;
import com.poly.edu.dao.ProductDAO;
import com.poly.edu.entities.Account;
import com.poly.edu.entities.Category;
import com.poly.edu.entities.Product;

@Controller
public class AdminProductController {
	@Autowired
	ProductDAO dao;
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/admin/product")
	public String index(Model model , @RequestParam("page") Optional<Integer> p) {
		List<Category> categories = categoryDAO.findAll();
		model.addAttribute("categories", categories);
		Product product = new Product();
		model.addAttribute("product", product);
		
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);	
		
		return "admin/product";
	}
	@RequestMapping("/admin/product/edit/{id}")
	public String edit(@PathVariable("id")String id, Model model, @RequestParam("page") Optional<Integer> p) {
		Product product = dao.findById(id).get();
		model.addAttribute("product",product);
		List<Category> categories = categoryDAO.findAll();
		model.addAttribute("categories", categories);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);	
		return "admin/product";
	}
	@PostMapping("/admin/product/create")
	public String create(Product product) {
		dao.save(product);
		return "redirect:/admin/product";
	}
	
	@PostMapping("/admin/product/update")
	public String update(Product product) {
		dao.save(product);
		return "redirect:/admin/product/edit/" + product.getId();
	}
	@GetMapping("/admin/product/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/admin/product";
	}
}
