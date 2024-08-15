package controller;

import java.io.IOException;

public class CreateCustomerServlet extends jakarta.servlet.http.HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
        // Create Customer object and set its properties from request parameters
        model.Customer customer = new model.Customer();
        customer.setCustomerName(request.getParameter("customerName"));
        customer.setTotalLifetimeValue(Double.parseDouble(request.getParameter("TotalLifetimeValue")));
        customer.setAverageOrderValue(Double.parseDouble(request.getParameter("AverageOrderValue")));
        customer.setCustomerSegmentCategory(request.getParameter("CustomerSegmentCategory"));

        // Use DAO to insert customer
        dao.CustomerDAO customerDAO = new dao.CustomerDAO();
        boolean isInserted = customerDAO.insertCustomer(customer);

        // Dispatch to success or error page
        if (isInserted) {
            request.getRequestDispatcher("success.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
