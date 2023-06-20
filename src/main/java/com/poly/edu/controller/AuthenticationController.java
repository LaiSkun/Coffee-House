package com.poly.edu.controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.poly.edu.dao.AccountDAO;
import com.poly.edu.entities.Account;
import com.poly.edu.services.LoginService;
import com.poly.edu.services.SessionService;
import com.poly.edu.services.ShoppingCartService;
import com.poly.edu.services.UserService;

@Controller
public class AuthenticationController {

	@Autowired
	LoginService loginService;
	
	@Autowired
	SessionService session;
	
	@Autowired
	UserService userService;

	@Autowired
	ShoppingCartService cart;
	
	@Autowired
    HttpServletRequest request;
	
	@GetMapping("/login")
	public String doGetLogin(Model model) {
		model.addAttribute("Count", cart.getCount());
		return "login";
	}

	@PostMapping("/login")
	public String doPostLogin(Model model, Account account) {
		
		boolean result = loginService.login(account);
		model.addAttribute("message", result ? "Login Thành Công!" : "Login Thất Bại");
		boolean isAdmin = ((Account) session.get("loggedInUser").orElse(new Account())).isAdmin();
		if (result) {
			String securityUri = (String) session.get("security-uri").orElse("");
			String redirect = "redirect:%s";
			
			
				return !securityUri.isEmpty() ? String.format(redirect, securityUri)
						: isAdmin ? String.format(redirect, "/admin/user") : String.format(redirect, "/home");
			
		}
		return "redirect:/home";
	}

	@GetMapping("/logout")
	public String doGetLogout(HttpSession session) {
		session.removeAttribute("loggedInUser");
		return "redirect:/home";
	}
	
	 private String getPreviousPage() {
	        return request.getHeader("Referer");
	    }
}
