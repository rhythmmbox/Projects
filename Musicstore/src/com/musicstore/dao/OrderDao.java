package com.musicstore.dao;

import static com.musicstore.database.Ofyservice.ofy;

import com.googlecode.objectify.ObjectifyService;
import com.musicstore.entity.Order;

public class OrderDao {
	public static void register(String orderId, String item_Name, String email, float price,
			int order_quant, String order_date, String delivery_date,
			String status){

		Order order=new Order(orderId,item_Name,email,price, order_quant, order_date,  delivery_date,status);

		ofy().save().entity(order).now();

		ObjectifyService.ofy().clear();

	}
	

}
