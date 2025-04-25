package model;

import java.sql.Date;

public class UserModel {

    // Defining Variables
    public enum Role {admin, student}
    private int id;
    private String fullName;
    private String username;
    private String email;
    private String password;
    private Role role;
    private byte[] profilePicture;

    // Default Constructor
    public UserModel() {

    }

    // Fully Parameterized Constructor
    public UserModel(int id, String fullName, String username, String email, String password, Role role, byte[] profilePicture) {
        this.id = id;
        this.fullName = fullName;
        this.username = username;
        this.email = email;
        this.password = password;
        this.role = role;
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
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public byte[] getProfilePicture() {
        return profilePicture;
    }

    public void setProfilePicture(byte[] profilePicture) {
        this.profilePicture = profilePicture;
    }

    public boolean isAdmin() {
        return role == Role.admin;
    }

    public boolean isStudent() {
        return role == Role.student;
    }
}
