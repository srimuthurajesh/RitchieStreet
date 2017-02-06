package com.niit.entityModel;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ORDER_TABLE")
public class OrderModel implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int OrderId;
	
	@ManyToOne
	@JoinColumn(name="username")
	private String username;
	
	@OneToOne
	@JoinColumn(name="productId")
	private ProductModel productId;

	
	
	
	
	public int getOrderId() {
		return OrderId;
	}

	public void setOrderId(int orderId) {
		OrderId = orderId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public ProductModel getProductId() {
		return productId;
	}

	public void setProductId(ProductModel productId) {
		productId = productId;
	}
	
}