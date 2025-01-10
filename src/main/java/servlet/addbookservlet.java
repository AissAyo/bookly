package servlet;



import java.io.IOException;

import DAO.BookDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Book;


/**
 * Servlet implementation class addbookservlet
 */
@WebServlet("/addbookservlet")
public class addbookservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addbookservlet() {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);	
		  String title = request.getParameter("title");
	        String authors = request.getParameter("authors");
	        String description = request.getParameter("description");
	        String publicationDate = request.getParameter("date");

	        // Log the values (Optional for debugging)
	        System.out.println("Title: " + title);
	        System.out.println("Authors: " + authors);
	        System.out.println("Description: " + description);
	        System.out.println("Publication Date: " + publicationDate);
	        if (title == null ) {
				response.getWriter().write("Error: Missing required parameters! title");
				return;
			}else if(description == null) {
				response.getWriter().write("Error: Missing required parameters! Description");

				response.getWriter().write("Error: Missing required parameters! publicationYear");

			}
			else if(publicationDate == null) {

				response.getWriter().write("Error: Missing required parameters! publicationYear");

			}
			else if(authors == null) {

				response.getWriter().write("Error: Missing required parameters! authors");

			}
		try {
			// Create and save the user
			Book book = new Book(title,description,publicationDate,authors);
			BookDAO  bookdao= new BookDAO();
			bookdao.addbook(book);
			response.getWriter().write("book added successfully!");
			String add ="book add succesfully";
       	 request.setAttribute("add", add);

            // Forward the request to JSP
            RequestDispatcher dispatcher = request.getRequestDispatcher("add.jsp");
            dispatcher.forward(request, response);
			response.sendRedirect("add.jsp");
		} catch (Exception e) {
			response.getWriter().write("Error: Unable to add user. " + e.getMessage());
		}
	}

}
