package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

    // Defining variables for database connection
    private static final String URL = "jdbc:mysql://localhost:3306/java_coursework";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    // Method for database connectivity
    private static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        }
        catch(ClassNotFoundException e) {
            throw new RuntimeException("Could not load MySQL driver");
        }
        catch(SQLException e) {
            throw new RuntimeException("Could not connect to database");
        }
    }

}
