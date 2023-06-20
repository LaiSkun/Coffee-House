package com.poly.edu.controller;

import java.net.http.HttpRequest;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.poly.edu.cart.CartDto;
import com.poly.edu.cart.CartService;
import com.poly.edu.dao.CategoryDAO;
import com.poly.edu.dao.ProductDAO;
import com.poly.edu.entities.Account;
import com.poly.edu.entities.Category;
import com.poly.edu.entities.Order;
import com.poly.edu.entities.Product;
import com.poly.edu.services.CatelogyService;
import com.poly.edu.services.OrderDetailService;
import com.poly.edu.services.OrderService;
import com.poly.edu.services.ProductService;
import com.poly.edu.services.SessionService;
import com.poly.edu.services.ShoppingCartService;
import com.poly.edu.services.UserService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	ShoppingCartService cart; 
	
	@Autowired
	SessionService session;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	OrderDetailService detailService;
	
	@Autowired
    UserService userService;
	
	 @RequestMapping("/view")
	    public String viewCart(Model model) {
		 model.addAttribute("Count", cart.getCount());
		 model.addAttribute("cart", cart);
	        return "shopping-cart";
	    }

	    @RequestMapping("/checkout")
	    public String checkout(Model model) {
	    	model.addAttribute("Count", cart.getCount());
	    	model.addAttribute("cart", cart);
	        return "check-out";
	    }
	    
	    @RequestMapping("/add/{id}")
	    public String add(@PathVariable String id) {
	        try {
	            cart.add(id);
	        } catch (NoSuchElementException e) {
	        }
	        return "redirect:/cart/view";
	    }

	    @RequestMapping("/remove/{id}")
	    public String remove(@PathVariable String id) {
	        cart.remove(id);
	        return "redirect:/cart/view";
	    }

	    @RequestMapping("/update")
	    public String update(@RequestParam String id, @RequestParam Optional<Integer> quantity, Model model) {
	    	 try {
	             int quantityVal = quantity.orElse(0);
	             if (quantityVal == 0) cart.remove(id);
	             else
	                 cart.update(id, quantityVal);
	         } catch (Exception e) {
	             model.addAttribute("message", e.getMessage());
	         }
	         return "redirect:/cart/view";
	    }

	    @RequestMapping("/clear")
	    public String clear() {
	        cart.clear();
	        return "redirect:/";
	    }
	    private String getPreviousPage() {
	        return request.getHeader("Referer");
	    }

		private void addOrderDetail(Product product1) {
		}
	

}
