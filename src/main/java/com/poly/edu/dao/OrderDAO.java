package com.poly.edu.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.poly.edu.entities.Order;
@Service
public interface OrderDAO extends JpaRepository<Order, Integer>{

}
