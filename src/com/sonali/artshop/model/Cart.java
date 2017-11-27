package com.sonali.artshop.model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Cart {

	private String cartid;
	private List<Item> items;
	private String itemsStr;
	private String userid;
	private String total;
	private String tax ;
	private String shipping ;
	private String grandtotal;
	
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public String getItemsStr() {
		return itemsStr;
	}


	public void setItemsStr(String itemsStr) {
		this.itemsStr = itemsStr;
	}



	public String getTotal() {
		return total;
	}



	public void setTotal(String total) {
		this.total = total;
	}



	public String getTax() {
		return tax;
	}



	public void setTax(String tax) {
		this.tax = tax;
	}



	public String getShipping() {
		return shipping;
	}



	public void setShipping(String shipping) {
		this.shipping = shipping;
	}



	public String getGrandtotal() {
		return grandtotal;
	}



	public void setGrandtotal(String grandtotal) {
		this.grandtotal = grandtotal;
	}



	public String getCartid() {
		return cartid;
	}

	public void setCartid(String cartid) {
		this.cartid = cartid;
	}

	public List<Item> getItems() {
		return items;
	}

	public void setItems() {
		 
		ObjectMapper objectMapper = new ObjectMapper();
		TypeReference<List<Item>> items = new TypeReference<List<Item>>() {};
    	List<Item> jsonToItemList = new ArrayList<Item>();
		try {
			jsonToItemList = objectMapper.readValue(itemsStr, items);
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		this.items = jsonToItemList;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}


	public Cart(String cartid, String itemsStr, String userid, String total, String tax, String shipping,
			String grandtotal) {
		super();
		this.cartid = cartid;
		this.itemsStr = itemsStr;
		this.userid = userid;
		this.total = total;
		this.tax = tax;
		this.shipping = shipping;
		this.grandtotal = grandtotal;
	}

	
}
