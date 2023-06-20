package com.poly.edu.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.poly.edu.entities.Account;



public interface AccountDAO extends JpaRepository<Account, String>{
	Account findByUsernameAndPassword(String username, String password);
	Account findByUsername(String username);
}
