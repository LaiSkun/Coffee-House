package com.poly.edu.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnore;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@SuppressWarnings("serial")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "Accounts")
public class Account {
	public Account(String username, String password) {
        this.username = username;
        this.password = password;
    }
	@Id
	String username;
	String password;
	String fullname;
	String email;
	String photo;
	boolean activated;
	boolean admin;
	@JsonIgnore
	@OneToMany(mappedBy = "account")
	List<Order> orders;
}
