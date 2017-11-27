package com.sonali.artshop;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sonali.artshop.model.User;

@WebServlet(urlPatterns = { "/register" }) 
		
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static DBAccess db = new  DBAccess();
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/pages/reg.jsp";
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
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		HttpSession session = request.getSession(true);
		User user = new User(fname, lname, email, password, phone);

		
		System.out.println(user.toStr());
		
		try {
			if(db.checkUser(user))
			{
				int add = db.addUser(user);
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
		
		
		
	}

}
