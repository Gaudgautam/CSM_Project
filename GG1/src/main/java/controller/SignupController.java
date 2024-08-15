package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.SignupDAO;
import model.User;

//@WebServlet("/SignupController")
public class SignupController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Create a User object and set its fields
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setUsername(username);
        user.setPassword(password);

        // Create an instance of SignupDAO
        SignupDAO signupDAO = new SignupDAO();

        // Register the user and determine the appropriate page to dispatch
        String nextPage;
        if (signupDAO.registerUser(user)) {
            nextPage = "login.jsp";
        } else {
            nextPage = "error.jsp";
        }

        // Dispatch the request
        RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
        dispatcher.forward(request, response);
    }
}