package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.login;
import model.signin;

import java.io.IOException;

import DAO.loginDAO;
import DAO.signinDAO;


@WebServlet("/loginservelet")
public class loginservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public loginservelet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String email = request.getParameter("email");
		String password = request.getParameter("password");

	    if (password == null ) {
	        response.getWriter().write("Error: Missing required parameters! name");
	        return;
	    }else if(email == null) {
	        response.getWriter().write("Error: Missing required parameters! email");

	    }
	    try {
	        // Create and save the user
	        login log = new login(email, password);
	        loginDAO logDAO = new loginDAO();
		    boolean isValid = logDAO.check(log);

	        if(isValid) {
	        	response.sendRedirect("books.jsp");
	        }else
	        {
	        	String Error ="passwrod or email is incorrect";
	        	 request.setAttribute("error", Error);

	             // Forward the request to JSP
	             RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
	             dispatcher.forward(request, response);
	        }
	        
	    } catch (Exception e) {
	        response.getWriter().write("Error: Unable to add user. " + e.getMessage());
	    }
	}

}
