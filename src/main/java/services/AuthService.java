package services;

import dao.UserDAO;
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

        UserModel newUser = new UserModel(0, fullName, username, email, hashedPwd, UserModel.Role.student, null, null);

        return UserDAO.createUser(newUser);
    }

    // Validating user login
    public static UserModel validateUser(String email, String password) throws SQLException {
        UserModel user = UserDAO.validateUser(email, password);
        return user;
    }
}
