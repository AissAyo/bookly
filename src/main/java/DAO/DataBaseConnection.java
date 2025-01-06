
package DAO;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/bookly";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public static Connection getConnection() throws SQLException {
    	   try {
               Class.forName("com.mysql.cj.jdbc.Driver");
               Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
               System.out.println("Connected to the database successfully! daah");
             return connection;

           } catch (ClassNotFoundException e) {
               System.out.println("JDBC Driver not found: " + e.getMessage());
           } catch (SQLException e) {
               System.out.println("Database connection error: " + e.getMessage());
           }
		return null;
}
}
