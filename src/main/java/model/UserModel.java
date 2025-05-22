package model;

<<<<<<< HEAD
import java.sql.Date;

public class UserModel {

    // Defining Variables
    public enum Role {admin, student}
=======
public class UserModel {

    public enum Role {admin, user}
>>>>>>> cef35d0 (This commit is for final submission.)
    private int id;
    private String fullName;
    private String username;
    private String email;
    private String password;
    private Role role;
<<<<<<< HEAD
=======
    private String phone;
    private String address;
>>>>>>> cef35d0 (This commit is for final submission.)
    private byte[] profilePicture;

    // Default Constructor
    public UserModel() {
<<<<<<< HEAD

    }

    // Fully Parameterized Constructor
    public UserModel(int id, String fullName, String username, String email, String password, Role role, byte[] profilePicture) {
=======
    }

    // Constructor without ID
    public UserModel(String fullName, String username, String email, String password, Role role, String phone, String address, byte[] profilePicture) {
        this.fullName = fullName;
        this.username = username;
        this.email = email;
        this.password = password;
        this.role = role;
        this.phone = phone;
        this.address = address;
        this.profilePicture = profilePicture;
    }

    // Fully Parameterized Constructor
    public UserModel(int id, String fullName, String username, String email, String password, Role role, String phone, String address, byte[] profilePicture) {
>>>>>>> cef35d0 (This commit is for final submission.)
        this.id = id;
        this.fullName = fullName;
        this.username = username;
        this.email = email;
        this.password = password;
        this.role = role;
<<<<<<< HEAD
        this.profilePicture = profilePicture;
    }

    // Constructor without ID for new users.
    public UserModel(String fullName, String username, String email, String password, Role role, byte[] profilePicture) {
        this.fullName = fullName;
        this.username = username;
        this.email = email;
        this.password = password;
        this.role = role;
        this.profilePicture = profilePicture;
    }

    public UserModel(String fullName, String username, String email, String password) {
        this.fullName = fullName;
        this.username = username;
        this.email = email;
        this.password = password;
    }

    // Getter and Setter Methods
=======
        this.phone = phone;
        this.address = address;
        this.profilePicture = profilePicture;
    }

    // Getter Methods
>>>>>>> cef35d0 (This commit is for final submission.)
    public int getId() {
        return id;
    }

<<<<<<< HEAD
    public void setId(int id) {
        this.id = id;
    }

=======
>>>>>>> cef35d0 (This commit is for final submission.)
    public String getFullName() {
        return fullName;
    }

<<<<<<< HEAD
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

=======
>>>>>>> cef35d0 (This commit is for final submission.)
    public String getUsername() {
        return username;
    }

<<<<<<< HEAD
    public void setUsername(String username) {
        this.username = username;
    }

=======
>>>>>>> cef35d0 (This commit is for final submission.)
    public String getEmail() {
        return email;
    }

<<<<<<< HEAD
    public void setEmail(String email) {
        this.email = email;
    }

=======
>>>>>>> cef35d0 (This commit is for final submission.)
    public String getPassword() {
        return password;
    }

<<<<<<< HEAD
    public void setPassword(String password) {
        this.password = password;
    }

=======
>>>>>>> cef35d0 (This commit is for final submission.)
    public Role getRole() {
        return role;
    }

<<<<<<< HEAD
    public void setRole(Role role) {
        this.role = role;
=======
    public String getPhone() {
        return phone;
    }

    public String getAddress() {
        return address;
>>>>>>> cef35d0 (This commit is for final submission.)
    }

    public byte[] getProfilePicture() {
        return profilePicture;
    }

<<<<<<< HEAD
=======
    // Setter Methods
    public void setId(int id) {
        this.id = id;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setAddress(String address) {
        this.address = address;
    }

>>>>>>> cef35d0 (This commit is for final submission.)
    public void setProfilePicture(byte[] profilePicture) {
        this.profilePicture = profilePicture;
    }

<<<<<<< HEAD
    public boolean isAdmin() {
        return role == Role.admin;
    }

    public boolean isStudent() {
        return role == Role.student;
    }
=======
>>>>>>> cef35d0 (This commit is for final submission.)
}
