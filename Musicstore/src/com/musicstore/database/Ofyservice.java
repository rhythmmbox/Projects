package com.musicstore.database;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyFactory;
import com.googlecode.objectify.ObjectifyService;
import com.musicstore.entity.*;


public class Ofyservice {
	
	static{		
	 factory().register(Instrument.class);
	factory().register(User.class);
	factory().register(Item.class);
	factory().register(Order.class);
	ObjectifyService.register(Photo.class);

	}
	
	
	public static Objectify ofy()
	{
		return ObjectifyService.ofy();
	}
	
	public static ObjectifyFactory factory()
	{
		return ObjectifyService.factory();
	}

}