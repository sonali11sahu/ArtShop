package com.sonali.artshop.model;

public class OrderedCarts {

	private String itemStr;
	private String orderTime;
	private String cardNo;
	private Cart itemList;
	
	public String getItemStr() {
		return itemStr;
	}
	public void setItemStr(String itemStr) {
		this.itemStr = itemStr;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public Cart getItemList() {
		return itemList;
	}
	public void setItemList() {
		
		System.out.println("ORDERCART :: "+this.itemStr);
		Cart cart = new Cart();
		cart.setItemsStr(this.itemStr);
		
		cart.setItems();
		this.itemList = cart;
	}
	
	public OrderedCarts(String itemStr, String orderTime, String cardNo) {
		super();
		this.itemStr = itemStr;
		this.orderTime = orderTime;
		this.cardNo = cardNo;
		setItemList();
		this.itemList = getItemList();
	}
	
	
	
	
	
}
