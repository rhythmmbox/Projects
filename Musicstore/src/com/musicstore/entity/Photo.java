package com.musicstore.entity;
import com.googlecode.objectify.annotation.*;

@Entity
public class Photo {
@Id  String p_id;
@Index String loc;
@Index String url;
public Photo() {
	super();
}
public Photo(String p_id, String loc, String url) {
	super();
	this.p_id = p_id;
	this.loc = loc;
	this.url = url;
}
public String getP_id() {
	return p_id;
}
public void setP_id(String p_id) {
	this.p_id = p_id;
}
public String getLoc() {
	return loc;
}
public void setLoc(String loc) {
	this.loc = loc;
}
public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url = url;
}
}