package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.User;

public class SignupDAO {

    public boolean registerUser(User user) {
        boolean isRegistered = false;

        String jdbcURL = "jdbc:mysql://localhost:3306/gautam";
        String dbUser = "root";
        String dbPassword = "";

        String sql = "INSERT INTO user (name, email, username, password) VALUES (?, ?, ?, ?)";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish connection
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Create a PreparedStatement to insert user data
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user.getName());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getUsername());
            statement.setString(4, user.getPassword());

            // Execute update
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                isRegistered = true;
            }

            // Close connection
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return isRegistered;
    }
}