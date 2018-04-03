package com.musicstore.entity;

import com.googlecode.objectify.annotation.*;

@Entity
public class Item {
	@Id String name;
	 String photoId;
	 int item_Quant;
	  String item_Type;
	 @Index String company;
	 int model_No;
	 float price;
	 public Item()
	 {
		 
	 }
	 
	 
	 
	
	public Item(String name, int item_Quant) {
		super();
		this.name = name;
		this.item_Quant = item_Quant;
	}
	public Item(String name, String photoId, int item_Quant, String item_Type,
			String company, int model_No, float price) {
		super();
		this.name = name;
		this.photoId = photoId;
		this.item_Quant = item_Quant;
		this.item_Type = item_Type;
		this.company = company;
		this.model_No = model_No;
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhotoId() {
		return photoId;
	}
	public void setPhotoId(String photoId) {
		this.photoId = photoId;
	}
	public int getItem_Quant() {
		return item_Quant;
	}
	public void setItem_Quant(int item_Quant) {
		this.item_Quant = item_Quant;
	}
	public String getItem_Type() {
		return item_Type;
	}
	public void setItem_Type(String item_Type) {
		this.item_Type = item_Type;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getModel_No() {
		return model_No;
	}
	public void setModel_No(int model_No) {
		this.model_No = model_No;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	 
}
