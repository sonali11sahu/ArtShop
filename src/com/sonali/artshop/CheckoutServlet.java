package com.sonali.artshop;

import java.io.IOException;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sonali.artshop.model.Cart;
import com.sonali.artshop.model.Item;

@WebServlet(urlPatterns = { "/checkout" }) 

public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static DBAccess db = new  DBAccess();
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/pages/checkout.jsp";
		getServletContext().getRequestDispatcher(url).forward(request,response);
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String itemstr = request.getParameter("itemstr");
		String total = request.getParameter("total");
		String tax = request.getParameter("tax");
		String shipping = request.getParameter("shipping");
		String grandtotal = request.getParameter("grandtotal");
		String cartId;
		
		HttpSession session = request.getSession(true);
		DateTimeFormatter timeStampPattern = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
		String dt = timeStampPattern.format(java.time.LocalDateTime.now()).toString();
		String id = (String) session.getAttribute("id");
		
		if(id != null)
			cartId = dt+"_"+id;
		else
			cartId = dt+"_0";
		
        System.out.println(cartId);
		
		System.out.println("ITEMS :: "+itemstr);
		
		 
		Cart cart = new Cart(cartId, itemstr, id, total, tax, shipping, grandtotal);
		cart.setItems();
    	session.setAttribute("cart", cart);
    	String url = "/pages/checkout.jsp";
    	getServletContext().getRequestDispatcher(url).forward(request,response);
    	
		/*try {
			if(db.checkUser(user))
			{
				//int add = db.addUser(user);
				session.setAttribute("modal", "Thankyou for registering with us. Please continue to shop or login.");
				response.sendRedirect("home");
			}
			else
			{
				System.out.println("USER PRESENT IN DB");
				session.setAttribute("error", "The given email is already registred with us");
				String url = "/pages/reg.jsp";
				getServletContext().getRequestDispatcher(url).forward(request,response);
			}
			
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		*/
		
		
	}

}