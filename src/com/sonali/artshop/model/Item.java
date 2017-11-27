package com.sonali.artshop.model;

public class Item {
	
	private String pid;
	private String id;
	private String cid;
	private String name;
	private int price;
	private int quantity;
	private String loc;
	
	public Item() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Item(String pid, String id, String cid, String name, int price, int quantity, String loc) {
		super();
		this.pid = pid;
		this.id = id;
		this.cid = cid;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.loc = loc;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}



	public String getLoc() {
		return loc;
	}



	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	
	
}
