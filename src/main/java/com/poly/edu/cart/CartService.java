package com.poly.edu.cart;

import java.util.Collection;
import java.util.HashMap;

import org.springframework.stereotype.Service;





@Service
public interface CartService {
	public HashMap<String, CartDto> AddCart(String id,HashMap<String, CartDto> cart);
	public HashMap<String, CartDto> EditCart(String id,int quantity,HashMap<String, CartDto> cart);
	public HashMap<String, CartDto> DeleteCart(String id ,HashMap<String, CartDto> cart);
	public int TotalQuantity(HashMap<String, CartDto> cart);
	public double TotalPrice(HashMap<String, CartDto> cart);
}
