package com.sonali.artshop.model;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	private String fname;
	private String id;
	private String lname;
	private String email;
	private String password;
	private String phone;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
	public User(String fname, String lname, String email, String password, String phone) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
		this.phone = phone;
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}



	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String toStr()
	{
		StringBuilder b = new StringBuilder();
		b.append("First Name : "+fname);
		b.append("\n Last Name : "+lname);
		b.append("\n Password : "+password);
		b.append("\n Email : "+email);
		b.append("\n Phone : "+phone);
		
		return b.toString();
	}

}
