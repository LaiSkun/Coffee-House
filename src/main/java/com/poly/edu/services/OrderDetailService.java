package com.poly.edu.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.edu.dao.OrderDetailDAO;

@Service
public class OrderDetailService {

    @Autowired
    OrderDetailDAO repo;


}
