package com.sonali.artshop;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sonali.artshop.model.Cart;
import com.sonali.artshop.model.OrderedCarts;
import com.sonali.artshop.model.Orders;
import com.sonali.artshop.model.Product;
import com.sonali.artshop.model.User;


public class DBAccess {

	private  Connection connect;
	private Statement statement = null;
	private PreparedStatement preparedStatement;
	private PreparedStatement preparedStatement2;
	private ResultSet resultSet = null;

	final static private String host = "localhost";
	final static private String user = "root";
	final static private String passwd = "";
	final static private String database = "artshop";

	public  void connectToDB() throws Exception {
		try {
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");

			// Setup the connection with the DB
			connect = DriverManager.getConnection("jdbc:mysql://" + host + "/"
					+ database + "?" + "user=" + user + "&password=" + passwd);

		} catch (Exception e) {
			throw e;
		}
	}

	public int addUser(User user) throws Exception {

		if(checkUser(user))
		{
			try {

				connectToDB();

				preparedStatement = connect.prepareStatement("insert into  user(`firstname`,`lastname`,`password`,`email`,`phone`) values (?, ?, ?, ? , ?)");
				// "myuser, webpage, datum, summary, COMMENTS from feedback.comments");
				// Parameters start with 1
				preparedStatement.setString(1, user.getFname());
				preparedStatement.setString(2, user.getLname());
				preparedStatement.setString(3, user.getPassword());
				preparedStatement.setString(4, user.getEmail());
				preparedStatement.setString(5, user.getPhone());

				preparedStatement.executeUpdate();
				return 1;
			} catch (Exception e) {
				e.printStackTrace();
				throw e;
			}
		}
		else
			return 0;
	}

	public int addOrder(Orders order,Cart cart, User user) throws Exception {

		try {

			connectToDB();

			preparedStatement = connect.prepareStatement("INSERT INTO `orders` (`ordertime`, `custfirstname`, `custlastname`, `custemail`, `custzip`, `custstate`, `custcity`, `custaddress`, `creditCardNumber`, `expirationDate`, `cvvNumber`, `userid`, `cartid`, `custphone`) VALUES (?, ?, ?, ? , ?,?, ?, ?, ? , ?,?, ?, ?, ? )");

			preparedStatement.setDate(1, order.getOrdertime());
			preparedStatement.setString(2, order.getCustfirstname());
			preparedStatement.setString(3, order.getCustlastname());
			preparedStatement.setString(4, order.getCustemail());
			preparedStatement.setString(5, order.getCustzip());
			preparedStatement.setString(6, order.getCuststate());
			preparedStatement.setString(7, order.getCustcity());
			preparedStatement.setString(8, order.getCustaddress());
			preparedStatement.setString(9, order.getCreditCardNumber());
			preparedStatement.setString(10, order.getExpirationDate());
			preparedStatement.setInt(11, order.getCvvNumber());
			preparedStatement.setString(12, order.getUserid());
			preparedStatement.setString(13, order.getCartid());
			preparedStatement.setString(14, order.getCustphone());

			preparedStatement.executeUpdate();
			
			preparedStatement2 = connect.prepareStatement("INSERT INTO `orderedcarts` (`cartid`, `itemsStr`, `userid`, `total`, `tax`, `shipping`, `grandtotal`) VALUES (?, ?, ?, ? , ?,?, ?)");

			preparedStatement2.setString(1, cart.getCartid());
			preparedStatement2.setString(2, cart.getItemsStr());
			preparedStatement2.setString(3, user.getId());
			preparedStatement2.setString(4, cart.getTotal());
			preparedStatement2.setString(5, cart.getTax());
			preparedStatement2.setString(6, cart.getShipping());
			preparedStatement2.setString(7, cart.getGrandtotal());

			preparedStatement2.executeUpdate();
			
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}

	}

	public User getUser(User user) throws Exception {


		try {

			connectToDB();

			preparedStatement = connect.prepareStatement("select * from user where email=? and password=?");

			preparedStatement.setString(1, user.getEmail());
			preparedStatement.setString(2, user.getPassword());

			resultSet = preparedStatement.executeQuery();

			while(resultSet.next())
			{
				user.setId(resultSet.getString("id"));
				user.setFname(resultSet.getString("firstname"));
				user.setLname(resultSet.getString("lastname"));
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

		return user;
	}

	public Cart getCart(String cid) throws Exception {

		Cart cart = new Cart();
		
		try {

			connectToDB();

			preparedStatement = connect.prepareStatement("select * from orderedcarts where cartid=?");

			preparedStatement.setString(1, cid);

			resultSet = preparedStatement.executeQuery();

			while(resultSet.next())
			{
				cart.setItemsStr(resultSet.getString("itemsStr"));
				cart.setCartid(cid);
				cart.setGrandtotal(resultSet.getString("grandtotal"));
			}
			return cart;
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

		
	}
	
	public List<OrderedCarts> getOrders(String card,String uid) throws Exception {

		List<OrderedCarts> tarnsactions = new ArrayList<OrderedCarts>();
		
		try {

			connectToDB();

			preparedStatement = connect.prepareStatement("select * from orders where creditCardNumber =? and userid=?");

			preparedStatement.setString(1, card);
			preparedStatement.setString(2, uid);

			resultSet = preparedStatement.executeQuery();

			while(resultSet.next())
			{
				String cartid = resultSet.getString("cartid");
				Date orderTime = resultSet.getDate("ordertime");
				String cardNo = resultSet.getString("creditCardNumber");
				Cart c = getCart(cartid);
				System.out.println("DB :: "+c.getItemsStr());
				OrderedCarts order = new OrderedCarts(c.getItemsStr(), orderTime.toString(), cardNo);
				tarnsactions.add(order);
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

		return tarnsactions;
	}
	
	public List<OrderedCarts> getOrders(String uid) throws Exception {

		List<OrderedCarts> tarnsactions = new ArrayList<OrderedCarts>();
		
		try {

			connectToDB();

			preparedStatement = connect.prepareStatement("select * from orders where userid=?");

			preparedStatement.setString(1, uid);

			resultSet = preparedStatement.executeQuery();

			while(resultSet.next())
			{
				String cartid = resultSet.getString("cartid");
				Date orderTime = resultSet.getDate("ordertime");
				String cardNo = resultSet.getString("creditCardNumber");
				Cart c = getCart(cartid);
				OrderedCarts order = new OrderedCarts(c.getItemsStr(), orderTime.toString(), cardNo);
				tarnsactions.add(order);
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

		return tarnsactions;
	}
	
	public boolean checkUser(User user) throws Exception {

		try {

			connectToDB();

			preparedStatement = connect.prepareStatement("select * from user where email=?");

			preparedStatement.setString(1, user.getEmail());

			resultSet = preparedStatement.executeQuery();

			int lenght =0;
			while(resultSet.next())
			{
				String userId = resultSet.getString("id");
				lenght++;
			}

			if(lenght>0)
				return false;
			else
				return true;

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}


	}

	public List<Product> getProducts() throws Exception {
		try {
			connectToDB(); 
			List<Product> prs = new ArrayList<Product>();
			preparedStatement = connect.prepareStatement("select * from product");

			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Product p = new Product();

				p.setPid(String.valueOf((resultSet.getInt("productid"))));
				p.setCid(String.valueOf((resultSet.getInt("categoryid"))));
				p.setName(resultSet.getString("productname"));
				p.setPrice(resultSet.getInt("productprice"));
				p.setDesc(resultSet.getString("description"));
				p.setLoc(resultSet.getString("loc"));
				p.setBdesc(resultSet.getString("briefdisc"));

				prs.add(p);
			}

			return prs;

		} catch (Exception e) {
			throw e;
		}
	}

	public List<Product> getProducts(String cid) throws Exception {
		try {
			connectToDB(); 
			List<Product> prs = new ArrayList<Product>();
			preparedStatement = connect.prepareStatement("select * from product where categoryid=?");

			preparedStatement.setString(1, cid);

			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Product p = new Product();

				p.setPid(String.valueOf((resultSet.getInt("productid"))));
				p.setCid(String.valueOf((resultSet.getInt("categoryid"))));
				p.setName(resultSet.getString("productname"));
				p.setPrice(resultSet.getInt("productprice"));
				p.setDesc(resultSet.getString("description"));
				p.setLoc(resultSet.getString("loc"));
				p.setBdesc(resultSet.getString("briefdisc"));

				prs.add(p);
			}

			return prs;

		} catch (Exception e) {
			throw e;
		}
	}

	// You need to close the resultSet
	public void close() {
		try {
			if (resultSet != null) {
				resultSet.close();
			}

			if (statement != null) {
				statement.close();
			}

			if (connect != null) {
				connect.close();
			}
		} catch (Exception e) {

		}
	}

}
