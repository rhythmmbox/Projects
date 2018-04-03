package com.musicstore.entity;
import com.googlecode.objectify.annotation.*;
@Entity
public class User {
		@Index String name;
		@Id @Index String email;
		String pwd;
		public User()
		{
			
		}
		public User(String name, String email, String pwd) {
			super();
			this.name = name;
			this.email = email;
			this.pwd = pwd;
			
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPwd() {
			return pwd;
		}
		public void setPwd(String pwd) {
			this.pwd = pwd;
		}
		
		
}
