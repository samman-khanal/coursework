package controller;


import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import dao.UserDAO;
import model.UserModel;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    private static final String REMEMBER_ME_COOKIE_NAME = "rememberMe";
    private static final int COOKIE_MAX_AGE = 1 * 24 * 60 * 60; // 1 day in seconds.

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Checking if the user is already logged in via rememberMe cookie.
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (REMEMBER_ME_COOKIE_NAME.equals(cookie.getName())) {
                    String[] credentials = decodeCookieValue(cookie.getValue());
                    if (credentials != null && credentials.length == 2) {
                        String email = credentials[0];
                        String password = credentials[1];
                        UserModel user = null;
                        try {
                            user = UserDAO.validateUser(email, password);
                        } catch (SQLException e) {
                            throw new RuntimeException(e);
                        }
                        if (user != null) {
                            // Auto login successful.
                            // Storing user in session.
                            HttpSession session = request.getSession();
                            session.setAttribute("user", user);
                            session.setAttribute("loggedIn", true);
                            response.sendRedirect(request.getContextPath() + "/");
                            return;
                        }
                    }
                }
            }
        }

        // Checking if there's a success message.
        String registrationSuccess = (String) request.getSession().getAttribute("registrationSuccess");
        if (registrationSuccess != null) {
            request.setAttribute("registrationSuccess", registrationSuccess);
            // Clearing the success message.
            request.getSession().removeAttribute("registrationSuccess");
        }
        // Redirecting to the login.jsp page
        request.getRequestDispatcher("/view/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Getting form parameters.
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rememberMe = request.getParameter("rememberMe");

        // Validating input.
        if (email == null || email.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            request.setAttribute("error", "Please enter your email and password");
            request.getRequestDispatcher("/view/login.jsp").forward(request, response);
            return;
        }

        // Authenticating user.
        UserModel user = null;
        try {
            user = UserDAO.validateUser(email, password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        if (user != null) {
            // Authentication successful.
            // Storing user in session.
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("loggedIn", true);

            // handling rememberMe functionality.
            if (rememberMe != null && rememberMe.equals("on")) {
                String cookieValue = encodeCookieValue(email, password);
                Cookie rememberMeCookie = new Cookie(REMEMBER_ME_COOKIE_NAME, cookieValue);
                rememberMeCookie.setMaxAge(COOKIE_MAX_AGE);
                rememberMeCookie.setPath(request.getContextPath());
                response.addCookie(rememberMeCookie);
            }

            // Redirecting to the homepage
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        }
        else {
            // Authentication failed.
            request.setAttribute("error", "Invalid email or password");
            request.getRequestDispatcher("/view/login.jsp").forward(request, response);
        }
    }

    // Helper method to encode the email and password into a single string
    private String encodeCookieValue(String email, String password) {
        // Concatenate the email and password with a colon (:)
        return email + ":" + password;
    }

    // Helper method to decode the cookie value into email and password
    private String[] decodeCookieValue(String cookieValue) {
        // Split the string into email and password using a colon (:)
        return cookieValue.split(":");
    }
}
