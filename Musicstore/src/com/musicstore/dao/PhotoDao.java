package com.musicstore.dao;
import static com.musicstore.database.Ofyservice.ofy;

import com.googlecode.objectify.ObjectifyService;

import com.musicstore.entity.Photo;


public class PhotoDao {
	
	public static void register(String p_id,String loc,String url)
	{ Photo pic =new Photo(p_id,loc,url);
		ofy().save().entity(pic);
		ObjectifyService.ofy().clear();
		}
}