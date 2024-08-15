package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;

public class LoginDAO {

    public boolean validate(User user) {
        boolean isValid = false;

        String jdbcURL = "jdbc:mysql://localhost:3306/gautam";
        String dbUser = "root";
        String dbPassword = "";

        String sql = "SELECT * FROM user WHERE username = ? AND password = ?";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish connection
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Create a PreparedStatement to check user credentials
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user.getUsername());
            statement.setString(2, user.getPassword());

            // Execute query
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                isValid = true;
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
            }

            // Close connection
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return isValid;
    }
}