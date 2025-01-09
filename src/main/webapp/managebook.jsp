<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="DAO.BookDAO, model.Book, java.util.List" %>
<%
    // Initialize the DAO
    BookDAO bookDAO = new BookDAO();
    String action = request.getParameter("action");
    String message = "";

    try {
        if ("add".equals(action)) {
            // Add a new book
            String title = request.getParameter("title");
            String authors = request.getParameter("authors");
            String description = request.getParameter("description");
            String publicationYear = request.getParameter("date");

            if (title != null && authors != null && description != null && publicationYear != null) {
                Book book = new Book();
                book.setTitle(title);
                book.setAuthor(authors);
                book.setDescription(description);
                book.setPublicationYear(publicationYear);

                boolean isAdded = bookDAO.addbook(book); // Get the boolean result
                if (isAdded) {
                    message = "Book added successfully!";
                } else {
                    message = "Failed to add the book.";
                }
            } else {
                message = "All fields are required!";
            }
        } else if ("delete".equals(action)) {
            // Delete a book
            int bookId = Integer.parseInt(request.getParameter("id"));
            boolean isDeleted = bookDAO.deleteBook(bookId); // Assuming deleteBook also returns a boolean
            if (isDeleted) {
                message = "Book deleted successfully!";
            } else {
                message = "Failed to delete the book.";
            }
        }
    } catch (Exception e) {
        message = "Error: " + e.getMessage();
    }

    // Retrieve the list of books
    List<Book> books = null;
    try {
        books = bookDAO.getAllBooks();
    } catch (Exception e) {
        message = "Error retrieving books: " + e.getMessage();
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Management</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/css/admin-style.css">
</head>
<body class="main-layout inner_page" 
      style="background-image: url('<%= request.getContextPath() %>/template/images/adminbackground.jpg'); 
             background-position: center; background-repeat: no-repeat;">
             <div style="display: flex; justify-content: center;">
 <a href="index.jsp"><img src="<%= request.getContextPath() %>/template/images/bookly.png" alt="wala khdm 3afak" /></a>					
</div>
<div class="container mt-5">
    <h1 class="mb-4">Book Management</h1>

    <!-- Message -->
    <%
        if (message != null && !message.isEmpty()) {
    %>
    <div class="alert alert-info"><%= message %></div>
    <%
        }
    %>

 

    <!-- List of Books -->
    <h2>List of Books</h2>
    <table class="table table-bordered">
        <thead>
        <tr>
           
            <th>Title</th>
            <th>Authors</th>
            <th>Description</th>
            <th>Publication Date</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            if (books != null) {
                for (Book book : books) {
        %>
        <tr>
            <td><%= book.getTitle() %></td>
            <td><%= book.getAuthor() %></td>
            <td><%= book.getDescription() %></td>
            <td><%= book.getPublicationYear() %></td>
            <td>
                <form action="managebook.jsp" method="post" class="d-inline">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="id" value="<%= book.getId() %>">
                    <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                </form>
            </td>
        </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
    <a href="add.jsp"  class="submit-btn">add Book</a>		
</div>
			
		
        
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
