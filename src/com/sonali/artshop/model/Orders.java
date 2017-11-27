package com.sonali.artshop.model;

import java.io.Serializable;
import java.sql.Date;

public class Orders implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private String orderid;
	private String userid;
	private String cartid;
	private Date ordertime;
	private String custfirstname;
	private String custlastname;
	private String custemail;
	private String custcountry;
	private String custzip;
	private String custstate;
	private String custcity;
	private String custaddress;
	private String custphone;
	private String creditCardType;
	private String cardHolderName;
	private String creditCardNumber;
	private String expirationDate;
	private String customerNotes;
	private int cvvNumber;
	
	
	public Orders() {
		super();
	}
	
	public String getCartid() {
		return cartid;
	}

	public void setCartid(String cartid) {
		this.cartid = cartid;
	}

	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public Date getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}
	public String getCustfirstname() {
		return custfirstname;
	}
	public void setCustfirstname(String custfirstname) {
		this.custfirstname = custfirstname;
	}
	public String getCustlastname() {
		return custlastname;
	}
	public void setCustlastname(String custlastname) {
		this.custlastname = custlastname;
	}
	public String getCustemail() {
		return custemail;
	}
	public void setCustemail(String custemail) {
		this.custemail = custemail;
	}
	public String getCustcountry() {
		return custcountry;
	}
	public void setCustcountry(String custcountry) {
		this.custcountry = custcountry;
	}
	public String getCustzip() {
		return custzip;
	}
	public void setCustzip(String custzip) {
		this.custzip = custzip;
	}
	public String getCuststate() {
		return custstate;
	}
	public void setCuststate(String custstate) {
		this.custstate = custstate;
	}
	public String getCustcity() {
		return custcity;
	}
	public void setCustcity(String custcity) {
		this.custcity = custcity;
	}
	public String getCustaddress() {
		return custaddress;
	}
	public void setCustaddress(String custaddress) {
		this.custaddress = custaddress;
	}
	public String getCustphone() {
		return custphone;
	}
	public void setCustphone(String custphone) {
		this.custphone = custphone;
	}
	public String getCreditCardType() {
		return creditCardType;
	}
	public void setCreditCardType(String creditCardType) {
		this.creditCardType = creditCardType;
	}
	public String getCardHolderName() {
		return cardHolderName;
	}
	public void setCardHolderName(String cardHolderName) {
		this.cardHolderName = cardHolderName;
	}
	public String getCreditCardNumber() {
		return creditCardNumber;
	}
	public void setCreditCardNumber(String creditCardNumber) {
		this.creditCardNumber = creditCardNumber;
	}
	public String getExpirationDate() {
		return expirationDate;
	}
	public void setExpirationDate(String expirationDate) {
		this.expirationDate = expirationDate;
	}
	public String getCustomerNotes() {
		return customerNotes;
	}
	public void setCustomerNotes(String customerNotes) {
		this.customerNotes = customerNotes;
	}
	public int getCvvNumber() {
		return cvvNumber;
	}
	public void setCvvNumber(int cvvNumber) {
		this.cvvNumber = cvvNumber;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public Orders(String cartid, String userid,Date ordertime, String custfirstname, String custlastname,
			String custemail, String custzip, String custstate, String custcity, String custaddress,
			String custphone,  String creditCardNumber,
			String expirationDate, int cvvNumber) {
		super();
	
		this.cartid = cartid;
		this.userid = userid;
		this.ordertime = ordertime;
		this.custfirstname = custfirstname;
		this.custlastname = custlastname;
		this.custemail = custemail;

		this.custzip = custzip;
		this.custstate = custstate;
		this.custcity = custcity;
		this.custaddress = custaddress;
		this.custphone = custphone;

		this.creditCardNumber = creditCardNumber;
		this.expirationDate = expirationDate;

		this.cvvNumber = cvvNumber;
	}

	

}
