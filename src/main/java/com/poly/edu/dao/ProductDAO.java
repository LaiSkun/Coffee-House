package com.poly.edu.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import com.poly.edu.entities.Product;





public interface ProductDAO extends JpaRepository<Product, String> {

	Page<Product> findByCategoryId(String categoryId, Pageable pageable);
	
	List<Product> findByCategory_id(String madm);
	Product findByid(String masp);
	
	
}
