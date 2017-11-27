package com.sonali.artshop;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sonali.artshop.model.User;

@WebServlet(urlPatterns = { "/login" }) 
		
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static DBAccess db = new  DBAccess();
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/pages/login.jsp";
		getServletContext().getRequestDispatcher(url).forward(request,response);
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub


		String email = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession session = request.getSession(true);
		String url;
		
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);

		try {
			 user = db.getUser(user);

			// Create a session object if it is already not  created.
			if(user != null)
			{ 

				String userIDKey = new String("id");
				String userID = new String(user.getId());
					session.setAttribute(userIDKey, userID);
					session.setAttribute("user", user);
					System.out.println("USER ID "+user.getId());
					response.sendRedirect("home");
			}
			else 
				{
				session.setAttribute("error", "Invalid email id or password. Please try again");
				 url = "/pages/login.jsp";
				 getServletContext().getRequestDispatcher(url).forward(request,response);
				}
			

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println(user.toStr());


	}

}
