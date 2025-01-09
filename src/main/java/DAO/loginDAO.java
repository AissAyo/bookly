package DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.login;

public class loginDAO {

    public boolean check(login l) {
        String query = "SELECT email, password FROM user WHERE email = ? AND password = ?";
        try (Connection connection = DataBaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            System.out.println("Connexion réussie à la base de données");

            // Set the parameters
            preparedStatement.setString(1, l.getemail());
            preparedStatement.setString(2, l.getpassword());

            // Execute the query
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                // Check if a match was found
                if (resultSet.next()) {
                    return true; // Credentials are valid
                }
            }
        } catch (SQLException e) {
            System.out.println("Erreur de connexion à la base de données : " + e.getMessage());
        }

        return false; // Return false if an error occurred or no match was found
    }
}
