package com.poly.edu.admin;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.poly.edu.dao.AccountDAO;
import com.poly.edu.entities.Account;
import com.poly.edu.services.UploadService;

@Controller
public class AdminUserController {
	@Autowired
	AccountDAO dao;

	@Autowired
	UploadService upload;

	@RequestMapping("/admin/user")
	public String index(Model model, @RequestParam("page") Optional<Integer> p) {
		Account user = new Account();
		model.addAttribute("user", user);

		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Account> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/user";
	}

	@RequestMapping("/admin/edit/{id}")
	public String edit(@PathVariable("id") String id, Model model, @RequestParam("page") Optional<Integer> p) {
		Account user = dao.findById(id).get();
		model.addAttribute("user", user);

		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Account> page = dao.findAll(pageable);
		model.addAttribute("page", page);

		return "admin/user";
	}

	@PostMapping("/admin/create")
	public String create( Account account)  {
		dao.save(account);
		
		return "redirect:/admin/user";
	}

	@PostMapping("/admin/update")
	public String update(Account account) {
		dao.save(account);
		return "redirect:/admin/edit/" + account.getUsername();
	}

	@GetMapping("/admin/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/admin/user";
	}
	@ModelAttribute("users")
    public List<Account> getUsers() {
        return dao.findAll();
    }
}
