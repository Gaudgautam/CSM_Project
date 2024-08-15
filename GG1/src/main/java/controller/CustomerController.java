
package controller;

import java.io.IOException;
import java.sql.*;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;


import model.CustomerData;

//@WebServlet("/customerTracker")
public class CustomerController extends jakarta.servlet.http.HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
        String url = "jdbc:mysql://localhost:3306/gautam";
        String username = "root";
        String password = "";

        List<CustomerData> customerList = new ArrayList<>();

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);
            stmt = conn.createStatement();

            String sql = "SELECT c.customer_id, c.customer_name, " +
                         "SUM(o.order_total) AS lifetime_value, " +
                         "AVG(o.order_total) AS average_order_value " +
                         "FROM customers c " +
                         "JOIN orders o ON c.customer_id = o.customer_id " +
                         "GROUP BY c.customer_id, c.customer_name";

            rs = stmt.executeQuery(sql);

            DecimalFormat df = new DecimalFormat("#.00");

            while(rs.next()) {
                String customerId = rs.getString("customer_id");
                String customerName = rs.getString("customer_name");
                double lifetimeValue = rs.getDouble("lifetime_value");
                double averageOrderValue = rs.getDouble("average_order_value");

                CustomerData customerData = new CustomerData(customerId, customerName, lifetimeValue, averageOrderValue);
                customerList.add(customerData);
            }

            request.setAttribute("customerList", customerList);
            request.getRequestDispatcher("/customer_tracker.jsp").forward(request, response);

        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }
}