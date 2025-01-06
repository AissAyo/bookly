package DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.signin;

public class signinDAO {

	public boolean ajouter(signin s) {
     
        Connection connection = null;
        try {
            connection = DataBaseConnection.getConnection();
            System.out.println("Connexion réussie à la base de données");
            String query = "INSERT INTO user(name,password,email) VALUES(?,?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            
            preparedStatement.setString(1, s.getname());
            preparedStatement.setString(2, s.getpassword());
            preparedStatement.setString(3, s.getemail());

            preparedStatement.executeUpdate();
            return true;

        } catch (SQLException e) {
            System.out.println("Erreur de connexion à la base de données : " + e.getMessage());
            return false;
        } finally {
            // Close the connection if it's not null
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    System.out.println("Erreur lors de la fermeture de la connexion : " + e.getMessage());
                }
            }
        }
    }
}
