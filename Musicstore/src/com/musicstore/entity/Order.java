package com.musicstore.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity

public class Order {
	@Id String orderId;
	String item_Name;
	//foreign key
	String email;
	 float price;
	 int order_quant;
	 String order_date;
	 String delivery_date;
	 String status;
	public Order() {
		super();
	}
	public Order(String orderId, String item_Name, String email, float price,
			int order_quant, String order_date, String delivery_date,
			String status) {
		super();
		this.orderId = orderId;
		this.item_Name = item_Name;
		this.email = email;
		this.price = price;
		this.order_quant = order_quant;
		this.order_date = order_date;
		this.delivery_date = delivery_date;
		this.status = status;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getItem_Name() {
		return item_Name;
	}
	public void setItem_Name(String item_Name) {
		this.item_Name = item_Name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getOrder_quant() {
		return order_quant;
	}
	public void setOrder_quant(int order_quant) {
		this.order_quant = order_quant;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getDelivery_date() {
		return delivery_date;
	}
	public void setDelivery_date(String delivery_date) {
		this.delivery_date = delivery_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}
