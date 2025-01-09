package DAO;

import model.Book;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static DAO.DataBaseConnection.*;

public class BookDAO {

    private Connection connection;



    public List<Book> getAllBooks() throws ClassNotFoundException {
        List<Book> books = new ArrayList<>();

        try {
            // Get the database connection
            connection = DataBaseConnection.getConnection();
            System.out.println("Connected to the database successfully!");

            // Define the query
            String query = "SELECT * FROM `books`";

            // Prepare and execute the query
            try (PreparedStatement stmt = connection.prepareStatement(query);
                 ResultSet rs = stmt.executeQuery()) {

                // Process the result set
                while (rs.next()) {
                    Book book = new Book(
                            rs.getInt("booksId"),
                            rs.getString("title"),
                            rs.getString("description"),
                            rs.getString("publicationYear"),
                            rs.getString("author")
                    );
                    books.add(book);
                }
            }

            // Log if no books were found
            if (books.isEmpty()) {
                System.out.println("No books found in the database.");
            }

        } catch (Exception e) {
            System.err.println("Error fetching books: " + e.getMessage());
            throw new RuntimeException(e);
        }

        return books;
    }


    public Book getBookById(int id) {
        String query = "SELECT * FROM books WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                	Book book = new Book(rs.getInt(" booksId "),rs.getString("titlr"),rs.getString("description"),rs.getString("publicationYear"),rs.getString("author"));
                  return  book ;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public  boolean addbook(Book b) {
        try {
            connection = DataBaseConnection.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
        	System.out.println("hello");
            String query = "INSERT INTO books (title, description, publicationYear, author) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
        	System.out.println("hello2");

            preparedStatement.setString(1, b.getTitle());
            preparedStatement.setString(2, b.getDescription());
            preparedStatement.setString(3, b.getPublicationYear());
            preparedStatement.setString(4, b.getAuthor());
        	System.out.println("hello3");

            preparedStatement.executeUpdate();
            System.out.println("Data inserted successfully!");
            return true;
        } catch (SQLException e) {
            System.out.println("SQL error: " + e.getMessage());
        }
		return false;

    }

    public boolean updateBook(Book book) {
        String query = "UPDATE books SET title = ?, description = ?, publication_year = ? WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, book.getTitle());
            stmt.setString(2, book.getDescription());
            stmt.setString(3, book.getPublicationYear());
            stmt.setInt(4, book.getId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }


    public boolean deleteBook(int id) throws SQLException, ClassNotFoundException {
        System.out.println("Connected to the database successfully!");
        connection = DataBaseConnection.getConnection();
        // Define the SQL DELETE query
        String query = "DELETE FROM books WHERE booksId = ?";

        // Create and execute the prepared statement
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id); // Set the book ID to delete
            int rowsAffected = stmt.executeUpdate(); // Execute the deletion
            System.out.println(rowsAffected + " row(s) deleted.");
            return rowsAffected > 0; // Return true if at least one row was deleted
        } catch (SQLException e) {
            System.err.println("Error during book deletion: " + e.getMessage());
            throw e; // Rethrow the exception to handle it in calling code
        }
    }

}
