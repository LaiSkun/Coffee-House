package com.poly.edu.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.ToString;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Products")
public class Product implements Serializable {
	@Id
	String id;
	String name;
	String image;
	double price;
	Integer available;
	@JsonIgnore
	@ToString.Exclude
	@ManyToOne
	@JoinColumn(name = "Categoryid")
	Category category;
	@JsonIgnore
	@ToString.Exclude
	@OneToMany(mappedBy = "product")
	List<OrderDetail> orderDetails;

	public OrderDetail placeOrder(OrderDetail detail) {
		detail.setProduct(this);
		detail.setPrice(price);
		detail.setQuantity(available);
		return detail;
	}
}
