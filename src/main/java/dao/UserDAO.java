package dao;

import model.UserModel;
<<<<<<< HEAD
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
        String query = "INSERT INTO USERS (fullName, username, email, password, role, profilePicture) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, userModel.getFullName());
            ps.setString(2, userModel.getUsername());
            ps.setString(3, userModel.getEmail());
            ps.setString(4, userModel.getPassword());
            ps.setString(5, userModel.getRole().toString());

            if (userModel.getProfilePicture() != null) {
                ps.setBytes(6, userModel.getProfilePicture());
            }
            else {
                ps.setNull(6, java.sql.Types.BLOB);
            }

            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                ResultSet rs = ps.getGeneratedKeys();
                if (rs.next()) {
                    return rs.getInt(1);
=======
import utils.DBConnectionUtil;
import utils.PasswordHashUtil;

import java.sql.*;

public class UserDAO {

    // Method to create user
    public static int createUser(UserModel user) {
        String query = "INSERT INTO users (fullName, username, email, password, role, phone, address, profilePicture) values (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnectionUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {

            ps.setString(1, user.getFullName());
            ps.setString(2, user.getUsername());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getRole().toString());

            // Handling phone if nullable
            if (user.getPhone() != null) {
                ps.setString(6, user.getPhone());
            }
            else {
                ps.setNull(6, Types.VARCHAR);
            }

            // Handling address if nullable
            if (user.getAddress() != null) {
                ps.setString(7, user.getAddress());
            }
            else {
                ps.setNull(7, Types.VARCHAR);
            }

            //Handling profilePicture if nullable
            if (user.getProfilePicture() != null) {
                ps.setBytes(8, user.getProfilePicture());
            }
            else {
                ps.setNull(8, Types.BLOB);
            }

            // Execute the update
            int affectedRows = ps.executeUpdate();

            if (affectedRows > 0) {
                try (ResultSet rs = ps.getGeneratedKeys()) {
                    if (rs.next()) {
                        return rs.getInt(1);
                    }
>>>>>>> cef35d0 (This commit is for final submission.)
                }
            }
        }
        catch (SQLException e) {
<<<<<<< HEAD
            throw new RuntimeException(e);
=======
            System.out.println("Error creating user: " + e.getMessage());
            System.err.println(e.getMessage());
>>>>>>> cef35d0 (This commit is for final submission.)
        }
        return -1;
    }

<<<<<<< HEAD
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
=======
    // Method to delete the user
    public static boolean deleteUser(int id) {
        String query = "DELETE FROM users WHERE id = ?";
        try (Connection conn = DBConnectionUtil.getConnection();
        PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, id);

            // Executing the update
            int affectedRows = ps.executeUpdate();
            return affectedRows > 0;
        }
        catch (SQLException e) {
            System.err.println("Error deleting user: " + e.getMessage());
            return false;
        }
    }

    // Method to authenticate the user.
//    public static UserModel getUserByEmailAndUsername(String email, String username, String password) {
//        String query = "SELECT * FROM users WHERE email = ? AND username = ? AND password = ?";
//
//        try (Connection conn = DBConnectionUtil.getConnection();
//        PreparedStatement ps = conn.prepareStatement(query)) {
//            ps.setString(1, email);
//            ps.setString(2, username);
//            ps.setString(3, password);
//
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                return new UserModel (
//                        rs.getInt("id"),
//                        rs.getString("fullName"),
//                        rs.getString("username"),
//                        rs.getString("email"),
//                        rs.getString("password"),
//                        rs.getString("role"),
//                        rs.getString("phone"),
//                        rs.getString("address"),
//                        rs.getBytes("profilePicture")
//                );
//            }
//        }
//        catch (SQLException e) {
//            System.err.println("Error getting user: " + e.getMessage());
//        }
//        return null;
//    }
>>>>>>> cef35d0 (This commit is for final submission.)
}
