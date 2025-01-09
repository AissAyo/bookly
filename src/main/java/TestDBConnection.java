import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestDBConnection {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3307/Produit"; // Modifiez si nécessaire
        String user = "root"; // Votre utilisateur MySQL
        String password = ""; // Votre mot de passe MySQL

        Connection connection = null;

        try {
            // Charger le driver JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Établir la connexion
            connection = DriverManager.getConnection(url, user, password);
            System.out.println("Connexion réussie à la base de données !");
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver introuvable : " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Erreur de connexion à la base de données : " + e.getMessage());
        } finally {
            // Fermer la connexion si elle a été ouverte
            if (connection != null) {
                try {
                    connection.close();
                    System.out.println("Connexion fermée.");
                } catch (SQLException e) {
                    System.out.println("Erreur lors de la fermeture de la connexion : " + e.getMessage());
                }
            }
        }
    }
}