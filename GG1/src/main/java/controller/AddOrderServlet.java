package controller;

import java.io.IOException;

import dao.CustomerDAO;

public class AddOrderServlet extends jakarta.servlet.http.HttpServlet{
    private CustomerDAO customerDAO;

    public void init() {
        customerDAO = new CustomerDAO();
    }

    protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
        int customerID = Integer.parseInt(request.getParameter("customerID"));
        double orderAmount = Double.parseDouble(request.getParameter("orderAmount"));

        // Add order and update customer values
        customerDAO.addOrder(customerID, orderAmount);

        request.setAttribute("message", "Order added successfully and customer values updated.");
        jakarta.servlet.RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
        dispatcher.forward(request, response);
    }
}
