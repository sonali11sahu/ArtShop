package com.sonali.artshop;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sonali.artshop.model.Product;

/**
 * Servlet implementation class MainSrevlet
 */
@WebServlet(
		urlPatterns = { "/product" }, 
		initParams = { 
				@WebInitParam(name = "name", value = "artshop")
		})
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String category = (String)request.getParameter("category");
		DBAccess db = new DBAccess();
		HttpSession session = request.getSession(true);
		if(category != null)
		{
			System.out.println("CATEGORY SELECTED IS : "+category);
			try {
				List<Product> prds = new ArrayList<Product>();
						prds = db.getProducts(category);
						session.setAttribute("categoryName", getServletContext().getInitParameter(category));
						session.setAttribute("products", prds);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		String url = "/pages/products.jsp";
		getServletContext().getRequestDispatcher(url).forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
