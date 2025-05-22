package utils;

import org.mindrot.jbcrypt.BCrypt;

public class PasswordHashUtil {

    // Method to hash the password
    public static String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

    // Method to check if the password matches the hashed password
    public static boolean checkPassword(String password, String hashedPassword) {
        return BCrypt.checkpw(password, hashedPassword);
    }
}
