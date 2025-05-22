package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/auth/register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Getting the data from the user
        String fullName = request.getParameter("fullName");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Validating the user input
        if (fullName == null ||
                username == null ||
                email == null ||
                password == null ||
                confirmPassword == null ||
                fullName.trim().isEmpty() ||
                username.trim().isEmpty() ||
                email.trim().isEmpty() ||
                password.trim().isEmpty() ||
                confirmPassword.trim().isEmpty()) {

            request.setAttribute("error", "Please fill out all the fields.");
            request.getRequestDispatcher("/views/auth/register.jsp").forward(request, response);
            return;
        }

        // Checking if password matches
        if (!password.equals(confirmPassword)) {
            request.setAttribute("error", "Passwords do not match.");
            request.getRequestDispatcher("/views/auth/register.jsp").forward(request, response);
            return;
        }

        // Default profile picture for the user
        String profilePicture = "/assets/images/";

        try {
            // Register the user
            int userId = services.AuthService.registerUser(fullName, username, email, password, profilePicture.getBytes());

            if (userId > 0) {
                // Registration successful, redirecting the user to the login page.
                response.sendRedirect(request.getContextPath() + "/LoginServlet");
            }
            else {
                // Registration is failed.
                request.setAttribute("error", "Registration failed. Try again.");
                request.getRequestDispatcher(request.getContextPath() + "/views/auth/register.jsp").forward(request, response);
            }
        }
        catch (Exception e) {
            // Handle exception
            request.setAttribute("error", "An error occurred." + e.getMessage());
            request.getRequestDispatcher("/views/auth/register.jsp").forward(request, response);
        }
    }
}
