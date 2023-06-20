package com.poly.edu.cart;

import java.util.HashMap;
import java.util.Map;

import com.poly.edu.dao.ProductDAO;
import com.poly.edu.entities.Product;

public class CartDAO {
	ProductDAO dao;

	public HashMap<String, CartDto> AddCart(String id, HashMap<String, CartDto> cart) {
		CartDto itemCart = new CartDto();
		Product product = dao.findByid(id);
		if (product != null) {
			itemCart.setProduct(product);
			itemCart.setQuantity(1);
			itemCart.setTotalPrice(product.getPrice());
		}
		cart.put(id, itemCart);
		return cart;
	}

	public HashMap<String, CartDto> EditCart(String id, int quantity, HashMap<String, CartDto> cart) {
		if (cart == null) {
			return cart;
		}
		CartDto itemCart = new CartDto();
		if (cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuantity(quantity);
			double totalPrice = quantity * itemCart.getProduct().getPrice();
			itemCart.setTotalPrice(totalPrice);
		}
		cart.put(id, itemCart);
		return cart;
	}

	public HashMap<String, CartDto> DeleteCart(String id, HashMap<String, CartDto> cart) {
		CartDto itemCart = new CartDto();
		if (cart == null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}

	public int TotalQuantity(HashMap<String, CartDto> cart) {
		int totalQuantity = 0;
		for (Map.Entry<String, CartDto> itemCart : cart.entrySet()) {
			totalQuantity += itemCart.getValue().getQuantity();

		}
		return totalQuantity;
	}

	public double TotalPrice(HashMap<String, CartDto> cart) {
		double totalPrice = 0;
		for (Map.Entry<String, CartDto> itemCart : cart.entrySet()) {
			totalPrice += itemCart.getValue().getQuantity();

		}
		return totalPrice;
	}

}
