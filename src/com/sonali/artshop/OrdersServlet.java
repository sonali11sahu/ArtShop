package com.sonali.artshop;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sonali.artshop.model.Cart;
import com.sonali.artshop.model.OrderedCarts;
import com.sonali.artshop.model.User;

@WebServlet(urlPatterns = { "/orders" }) 

public class OrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static DBAccess db = new  DBAccess();
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrdersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/pages/orders.jsp";
		
		HttpSession ses = request.getSession(false);
		User user = (User)ses.getAttribute("user");
		if(user == null)
		{
			user = new User();
			user.setFname("Guest");
			user.setId("0");
		}
		List<OrderedCarts> transactions = new ArrayList<>();
		try {
			transactions = db.getOrders(user.getId());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ses.setAttribute("transactions", transactions);
	
		getServletContext().getRequestDispatcher(url).forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String card = request.getParameter("card");
		
		HttpSession session = request.getSession(false);
		
		try {
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
			List<OrderedCarts> transac = db.getOrders(card,user.getId());
		
					String url = "/pages/orders.jsp";
    	
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