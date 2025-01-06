package servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.signin;

import java.io.IOException;

import DAO.signinDAO;

/**
 * Servlet implementation class signinservlet
 */
@WebServlet("/servlet/signinservlet")
public class signinservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signinservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // Validate input parameters
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");

	    if (name == null || email == null || password == null) {
	        response.getWriter().write("Error: Missing required parameters!");
	        return;
	    }

	    // Log sanitized input
	    System.out.printf("User Registration - Name: %s, Email: %s%n", name, email);

	    try {
	        // Create and save the user
	        signin sign = new signin(name, email, password);
	        signinDAO signinDAO = new signinDAO();
	        signinDAO.ajouter(sign);
	        response.getWriter().write("User added successfully!");
	    } catch (Exception e) {
	        response.getWriter().write("Error: Unable to add user. " + e.getMessage());
	    }
	}

	}


