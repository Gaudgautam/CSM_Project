package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Customer;

public class CustomerDAO {
    // Existing code...

    private static final String UPDATE_LIFETIME_AND_AVERAGE_VALUE_SQL = "UPDATE Customer SET totalLifetimeValue = ?, averageOrderValue = ? WHERE customerID = ?;";

    public void updateCustomerValues(int customerID) {
        double totalLifetimeValue = 0;
        double averageOrderValue = 0;

        try (Connection connection=getConnectio()) {
            // Calculate totalLifetimeValue
            PreparedStatement totalLifetimeStmt = connection.prepareStatement("SELECT SUM(orderAmount) AS total FROM Orders WHERE customerID = ?");
            totalLifetimeStmt.setInt(1, customerID);
            ResultSet rs = totalLifetimeStmt.executeQuery();
            if (rs.next()) {
                totalLifetimeValue = rs.getDouble("total");
            }

            // Calculate averageOrderValue
            PreparedStatement averageOrderStmt = connection.prepareStatement("SELECT AVG(orderAmount) AS avg FROM Orders WHERE customerID = ?");
            averageOrderStmt.setInt(1, customerID);
            rs = averageOrderStmt.executeQuery();
            if (rs.next()) {
                averageOrderValue = rs.getDouble("avg");
            }

            // Update Customer table with these values
            PreparedStatement updateStmt = connection.prepareStatement(UPDATE_LIFETIME_AND_AVERAGE_VALUE_SQL);
            updateStmt.setDouble(1, totalLifetimeValue);
            updateStmt.setDouble(2, averageOrderValue);
            updateStmt.setInt(3, customerID);
            updateStmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnectio() {
		
		return null;
	}

	

	// Method to add a new order
    public void addOrder(int customerID, double orderAmount) {
        String INSERT_ORDER_SQL = "INSERT INTO Orders (customerID, orderAmount) VALUES (?, ?)";

        try (Connection connection = getConnectio();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ORDER_SQL)) {
            preparedStatement.setInt(1, customerID);
            preparedStatement.setDouble(2, orderAmount);
            preparedStatement.executeUpdate();

            // Update customer values after adding the order
            updateCustomerValues(customerID);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	public boolean insertCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return false;
	}
}