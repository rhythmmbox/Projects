package com.musicstore.dao;

import static com.musicstore.database.Ofyservice.ofy;

import com.googlecode.objectify.ObjectifyService;
import com.musicstore.entity.Instrument;

public class InstrumentDao {
	public static void register(String name, String type, String photo_Id){
		System.out.println("5");
		Instrument inst=new Instrument(name,type,photo_Id);
		System.out.println("5.5");

		ofy().save().entity(inst).now();
		System.out.println("6");
		ObjectifyService.ofy().clear();

	}

}
