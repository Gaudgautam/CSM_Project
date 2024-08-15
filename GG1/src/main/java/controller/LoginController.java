package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

import dao.LoginDAO;
import model.User;

//@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Create a User object and set its fields
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        // Create an instance of LoginDAO
        LoginDAO loginDAO = new LoginDAO();

        // Validate the user and determine the appropriate page to dispatch
        String nextPage;
        if (loginDAO.validate(user)) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            nextPage = "success.jsp";
        } else {
            nextPage = "error.jsp";
        }

        // Dispatch the request
        RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
        dispatcher.forward(request, response);
    }
}