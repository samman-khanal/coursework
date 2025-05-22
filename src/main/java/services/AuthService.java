package services;

import dao.UserDAO;
<<<<<<< HEAD
import utils.PasswordHash;
import model.UserModel;

import java.sql.SQLException;

public class AuthService {
    public static int createUser(String fullName, String username, String email, String password) {
        if (UserDAO.emailExists(email) || UserDAO.usernameExists(username)) {
            return -1;
        }

        // Hashing the password before storing
        String hashedPwd = PasswordHash.hashPassword(password);

        UserModel newUser = new UserModel(0, fullName, username, email, hashedPwd, UserModel.Role.student, null);

        return UserDAO.createUser(newUser);
    }

    // Validating user login
    public static UserModel validateUser(String email, String password) throws SQLException {
        UserModel user = UserDAO.validateUser(email, password);
        return user;
    }
=======
import model.UserModel;
import org.mindrot.jbcrypt.BCrypt;
import utils.PasswordHashUtil;

public class AuthService {
    public static int registerUser(String fullName, String username, String email, String password, byte[] profilePicture) {
        String hashedPassword = PasswordHashUtil.hashPassword(password);
        UserModel user = new UserModel();
        user.setFullName(fullName);
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(hashedPassword);
        user.setProfilePicture(profilePicture);
        return UserDAO.createUser(user);
    }

//    public static UserModel loginUser(String email, String username, String password) {
//        UserModel user = new UserModel();
//        user.setEmail(email);
//        user.setUsername(username);
//
//        return null;
//    }
>>>>>>> cef35d0 (This commit is for final submission.)
}
