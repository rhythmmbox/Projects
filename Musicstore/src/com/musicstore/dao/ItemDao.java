package com.musicstore.dao;

import static com.musicstore.database.Ofyservice.ofy;

import com.googlecode.objectify.ObjectifyService;
import com.musicstore.entity.Item;

public class ItemDao {
	public static void register(String name, String photoId, int item_Quant, String item_Type,
			String company, int model_No, float price){

		Item item=new Item( name,photoId,item_Quant, item_Type,company,model_No,price);
		ofy().save().entity(item).now();

		ObjectifyService.ofy().clear();

	}
	public static void register(String name,int item_Quant){

		Item item=new Item( name,item_Quant);
		ofy().save().entity(item).now();

		ObjectifyService.ofy().clear();

	}


}
