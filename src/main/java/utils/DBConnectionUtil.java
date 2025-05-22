package utils;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBConnectionUtil {

    // Defining variables for database connection
    private static String URL;
    private static String USERNAME;
    private static String PASSWORD;

    static {
        try (InputStream is = DBConnectionUtil.class.getClassLoader().getResourceAsStream("db.properties")) {
            Properties prop = new Properties();
            prop.load(is);
            Class.forName(prop.getProperty("db.driver"));
            URL = prop.getProperty("db.url");
            USERNAME = prop.getProperty("db.username");
            PASSWORD = prop.getProperty("db.password");

        }
        catch (Exception e) {
            System.out.println("Error in loading database properties file.");
            System.err.println(e.getMessage());
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}
