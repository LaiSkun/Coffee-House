package com.poly.edu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.edu.dao.CategoryDAO;
import com.poly.edu.entities.Category;


@Service
public class CatelogyService {
	@Autowired
	private CategoryDAO repo;
	
	public List<Category> findAll() {
		return repo.findAll();
	}
	
	public Category findByMadm(String madm) {
		return repo.findByid(madm);
	}
}
