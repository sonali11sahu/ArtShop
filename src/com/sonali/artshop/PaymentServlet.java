package com.sonali.artshop;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sonali.artshop.model.Cart;
import com.sonali.artshop.model.Orders;
import com.sonali.artshop.model.User;

@WebServlet(urlPatterns = { "/payment" }) 

public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static DBAccess db = new  DBAccess();
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/pages/payment.jsp";
		getServletContext().getRequestDispatcher(url).forward(request,response);
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String zip = request.getParameter("zip");
		String phone = request.getParameter("phone");
		String card = request.getParameter("card");
		String expiry = request.getParameter("expiry");
		int cvv = Integer.valueOf(request.getParameter("cvv"));
		
		HttpSession session = request.getSession(false);
		
		try {
		Cart cart = (Cart) session.getAttribute("cart");
		User user = (User)session.getAttribute("user");
		if(user == null){
			
			user = new User();
			user.setId("0");
			user.setFname("Guest");
			
			session.setAttribute("error", "Please Login to checkout");
			response.sendRedirect("login");
		}
		else
		{
			if(user.getId() == null)
			{
				user = new User();
				user.setId("0");
				user.setFname("Guest");
				
			}
			Orders orders = new Orders( cart.getCartid(),user.getId(), new Date(new java.util.Date().getTime()), fname, lname, email, zip, state, city, address, phone, card, expiry, cvv);
		
    	String url = "/pages/orders.jsp";
    	
				int add = db.addOrder(orders,cart,user);
				//session.setAttribute("modal", "Thankyou for registering with us. Please continue to shop or login.");
				//response.sendRedirect("home");
				getServletContext().getRequestDispatcher(url).forward(request,response);}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			//session.setAttribute("error", "Please Login to checkout");
			//response.sendRedirect("login");
			e.printStackTrace();
		}	
		
		
	}

}