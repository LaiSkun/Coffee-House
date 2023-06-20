package com.poly.edu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.edu.entities.Category;

public interface CategoryDAO extends JpaRepository<Category, String> {
	
	Category findByid(String madm);
}
