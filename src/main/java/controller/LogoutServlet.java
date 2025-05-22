package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LogoutServlet", value = "/LogoutServlet")
public class LogoutServlet extends HttpServlet {

    private static final String REMEMBER_ME_COOKIE_NAME = "rememberMe";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Getting the current session
        HttpSession session = request.getSession();

        // If a session already exists, invalidate the session
        if (session != null) {
            System.out.println("The user is logged out successfully " + "with email: " + session.getAttribute("email"));
            session.invalidate();
        }

        // Clearing the remember me cookie
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (REMEMBER_ME_COOKIE_NAME.equals(cookie.getName())) {
                    cookie.setValue("");
                    cookie.setPath(request.getContextPath());
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                    break;
                }
            }
        }

        // Suitable message to display on the login page.
        request.getSession().setAttribute("success", "You are successfully logged out.");

        // Redirecting the user to the login page.
        System.out.println("Redirecting the user to the login page...");
        response.sendRedirect(request.getContextPath() + "/views/auth/login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
