package com.poly.edu.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import java.util.*;

import com.poly.edu.entities.Product;

@Service
@SessionScope
public class ShoppingCartService {
	private final Map<String, Product> map = new HashMap<>();
	@Autowired
	ProductService service;

	public Product add(String id) {
		Product product = service.findById(id).orElseThrow();
		product.setAvailable(product.getAvailable() > 0 ? 1 : 0);
		return map.merge(id, product, (o1, o2) -> orderProduct(o1));
	}

	public Product update(String id, int quantity) {
		
		return map.computeIfPresent(id, (key, product) -> orderProduct(product, quantity));
	}

	public Product remove(String id) {
		return map.remove(id);
	}

	private Product orderProduct(Product product) {
		return orderProduct(product, product.getAvailable() + 1);
	}

	private Product orderProduct(Product product, int quantity) {
//	        int stock = service.findById(product.getId()).get().getQuantity();
		if (quantity < 0)
			throw new RuntimeException("Số lượng sản phẩm không hợp lệ");
//	        if (quantity > stock) throw new RuntimeException("Không ")
		product.setAvailable(quantity);
		return product;
	}

	public void clear() {
		map.clear();
	}

	public boolean contains(String id) {
		return map.containsKey(id);
	}

	public int getSize() {
		return map.size();
	}

	public int getCount() {
		return map.values().stream().map(product -> product.getAvailable()).reduce(Integer::sum).orElse(0);
	}

	public void addItems(List<Product> list) {
		list.stream().forEach(item -> map.put(item.getId(), item));
	}

	public Map<String, Product> getMap() {
		return map;
	}

	public Collection<Product> getItems() {
		return map.values();
	}

	public double getAmount() {
		return map.values().stream().map(p -> p.getPrice() * p.getAvailable()).reduce(Double::sum).orElse(0d);
	}
}
