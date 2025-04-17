package controller;

import DAO.UserDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.UserModel;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "RegistrationServlet", value = "/register")
public class RegistrationServlet extends HttpServlet {

    public RegistrationServlet() {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserModel user = new UserModel(fullName, username, email, password);

    }
}
