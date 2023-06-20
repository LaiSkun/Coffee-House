package com.poly.edu.cart;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.annotation.SessionScope;

import com.poly.edu.entities.OrderDetail;
import com.poly.edu.entities.Product;



@SessionScope
@Controller
public class CartServiceImpl implements CartService{
	@Autowired
	private CartDAO cartdao= new CartDAO();
	@Override
	public HashMap<String, CartDto> AddCart(String id, HashMap<String, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartdao.AddCart(id, cart);
	}

	@Override
	public HashMap<String, CartDto> EditCart(String id, int quantity, HashMap<String, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartdao.EditCart(id, quantity, cart);
	}

	@Override
	public HashMap<String, CartDto> DeleteCart(String id, HashMap<String, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartdao.DeleteCart(id, cart);
	}

	@Override
	public int TotalQuantity(HashMap<String, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartdao.TotalQuantity(cart);
	}

	@Override
	public double TotalPrice(HashMap<String, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartdao.TotalPrice(cart);
	}

	
	

}
