package utils;

import org.mindrot.jbcrypt.BCrypt;

public class PasswordHash {
    public static String hashPassword(String password) {
        // Generating salt
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }
    public static boolean checkPassword(String password, String hash) {
        // Checking password with the hash
        return BCrypt.checkpw(password, hash);
    }
}
