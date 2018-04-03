package com.musicstore.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class Instrument {
	@Id String name;
	 @Index String type;
	//foreign key 
	 String photoId;
	 public Instrument()
	 {
		 
	 }
	public Instrument(String name, String type, String photoId) {
		super();
		System.out.println("8");

		this.name = name;
		this.type = type;
		this.photoId = photoId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPhotoId() {
		return photoId;
	}
	public void setPhotoId(String photoId) {
		this.photoId = photoId;
	}
	
	 
	 
	 

}
