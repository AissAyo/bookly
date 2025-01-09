package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.author;

public class authorDAO {
	
	public int authorFound(String name) {
	    Connection connection = null;
	    ResultSet resultSet = null;
	    try {
	        connection = DataBaseConnection.getConnection();
	        System.out.println("Connexion réussie à la base de données");

	        String query = "SELECT `authorId` FROM `author` WHERE name=?";
	        PreparedStatement preparedStatement = connection.prepareStatement(query);

	        // Set the parameter in the query
	        preparedStatement.setString(1, name);

	        // Execute the query and get the result
	        resultSet = preparedStatement.executeQuery();

	        // Process the result
	        if (resultSet.next()) {
	            return resultSet.getInt("authorId"); 
	        } else {
	            System.out.println("No author found with the name: " + name);
	        }

	    } catch (SQLException e) {
	        System.out.println("Erreur de connexion à la base de données : " + e.getMessage());
	    } finally {
	        // Close resources
	        try {
	            if (resultSet != null) resultSet.close();
	            if (connection != null) connection.close();
	        } catch (SQLException e) {
	            System.out.println("Erreur lors de la fermeture de la connexion : " + e.getMessage());
	        }
	    }
	    return (Integer) null; // Return null if no author is found or an error occurs
	}
	public Integer getauthorID(String name) {
		Integer x=authorFound(name);
		if(x==null) {
			author au = new author(name);
			
		}else {
			return x;
		}
		
		return null;
	}
	
	public Integer addAuthor(author au) {
		return null;
		
		
	}
	
	
	

}
