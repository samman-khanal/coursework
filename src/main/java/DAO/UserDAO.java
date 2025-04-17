package DAO;

import model.UserModel;
import utils.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    // Method for creating a user
    public static int createUser(UserModel userModel) {
        String query = "INSERT INTO USERS (fullName, username, email, password, role, created_date) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, userModel.getFullName());
            ps.setString(2, userModel.getUsername());
            ps.setString(3, userModel.getEmail());
            ps.setString(4, userModel.getPassword());
            ps.setInt(5, userModel.getRole());
            ps.setDate(6, userModel.getCreated_date());

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                ResultSet rs = ps.getGeneratedKeys();
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return -1;
    }

    public static UserModel validateUser(String email, String password) throws SQLException {
        String query = "SELECT * FROM USERS WHERE email = ? AND password = ?";
        try (Connection conn = DatabaseConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                UserModel user = new UserModel();
                user.setFullName(rs.getString("fullName"));
                user.setUsername(rs.getString("username"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getInt("role"));
                user.setCreated_date(rs.getDate("created_date"));
                return user;
            }
        }
        return null;
    }

}
