package com.poly.edu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.edu.entities.OrderDetail;



public interface OrderDetailDAO extends JpaRepository<OrderDetail, Integer>{

}
