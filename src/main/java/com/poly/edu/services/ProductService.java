package com.poly.edu.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.edu.dao.ProductDAO;
import com.poly.edu.entities.Product;

@Service
public class ProductService {

	@Autowired
	private ProductDAO repo;

	public List<Product> findAll() {
		return repo.findAll();
	}

	public List<Product> findByMaDM(String madm) {
		return repo.findByCategory_id(madm);
	}

	public Product findByMaSP(String masp) {
		return repo.findByid(masp);
	}

	public Optional<Product> findById(String id) {
		return repo.findById(id);
	}
}
