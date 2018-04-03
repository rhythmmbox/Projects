package com.musicstore.dao;
import static com.musicstore.database.Ofyservice.ofy;
import com.googlecode.objectify.ObjectifyService;
import com.musicstore.entity.User;
public class UserDao {
	


	public static void register(String name, String email, String pwd){

		User user=new User(name,email,pwd);

		ofy().save().entity(user).now();

		ObjectifyService.ofy().clear();

	}
	
	public static boolean login(String email , String pass)
	{
		User ud = null;
		if(ofy().load().type(User.class).id(email).now()!=null)
		{
			ud=ofy().load().type(User.class).id(email).now();
		}
		else
			return false;	
		if(ud.getPwd().equals(pass))
					return true;				
		else
			return false;	
	}
	
}
