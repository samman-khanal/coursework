package dao;

import model.UserModel;
import utils.DatabaseConnection;
import utils.PasswordHash;

import javax.xml.transform.Result;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
//            ps.setRole(5, userModel.getRole());
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
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String hashedPwd = rs.getString("password");

                if (PasswordHash.checkPassword(password, hashedPwd)) {
                    UserModel user = new UserModel();
                    user.setId(rs.getInt("id"));
                    user.setFullName(rs.getString("fullName"));
                    user.setUsername(rs.getString("username"));
                    user.setEmail(rs.getString("email"));
                    user.setPassword(hashedPwd);
//                    user.setRole(UserModel.Role.valueOf(rs.getString("role")));
//                    user.setProfilePicture(rs.getBytes("profilePicture"));
                    user.setCreated_date(rs.getDate("created_date"));

                    // handling BLOB profile picture if needed.
                    byte[] profilePicture = user.getProfilePicture();
                    if (profilePicture != null) {
                        user.setProfilePicture(profilePicture);
                    }

                    String roleString = rs.getString("role");
                    user.setRole(UserModel.Role.valueOf(roleString));

                    return user;
                }
            }
        }
        catch (SQLException e) {
            System.err.println("Error validating user: " + e.getMessage());
            e.printStackTrace();
        }
        return null;
    }

    // Checking if email already exists or not.
    public static boolean emailExists(String email) {
        String query = "SELECT * FROM USERS WHERE email = ?";
        try (Connection conn = DatabaseConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        }
        catch (SQLException e) {
            System.err.println("Error checking email: " + e.getMessage());
        }
        return false;
    }

    // Checking if userName already exists or not.
    public static boolean usernameExists(String username) {
        String query = "SELECT * FROM users WHERE username = ?";
        try (Connection conn = DatabaseConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        }
        catch (SQLException e) {
            System.err.println("Error checking username: " + e.getMessage());
        }
        return false;
    }
}
