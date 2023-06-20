package com.poly.edu.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.poly.edu.dao.AccountDAO;
import com.poly.edu.entities.Account;

@Service
@Transactional
public class UserService {
	@Autowired
	AccountDAO repo;

	public Account checkLogin(String username, String password) {
		return repo.findByUsernameAndPassword(username, password);
	}

	public Account save(Account user) {
		return repo.save(user);
	}

	public Optional<Account> findById(String id) {
		return repo.findById(id);
	}

	public List<Account> findAll() {
		return repo.findAll();
	}

	public void deleteById(String id) {
		repo.deleteById(id);
	}

	public boolean existsById(String id) {
		return repo.existsById(id);
	}
}
