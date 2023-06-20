package com.poly.edu.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.edu.dao.OrderDAO;
import com.poly.edu.entities.Order;

import java.util.List;

@Service
public class OrderService {

    @Autowired
    OrderDAO repo;

    public List<Order> findAll() {
        return repo.findAll();
    }

    public Order placeAnOrder(Order order) {
        return repo.save(order);
    }

}
