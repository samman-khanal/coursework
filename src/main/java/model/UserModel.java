package model;

public class UserModel {

    // Defining Variables
    private int id;
    private String fullName;
    private String username;
    private String email;
    private String password;
    private int role = 1; // For default users (students)

    // Default Constructor
    public UserModel() {

    }

    // Constructor for new user with default role
    public UserModel(String fullName, String username, String email, String password) {
        this.fullName = fullName;
        this.username = username;
        this.email = email;
        this.password = password;
    }

    // Constructor with ID and default role
    public UserModel(int id, String fullName, String username, String email, String password) {
        this.id = id;
        this.fullName = fullName;
        this.username = username;
        this.email = email;
        this.password = password;
    }

    // Constructor for user with custom role
    public UserModel(String fullName, String username, String email, String password, int role) {
        this.fullName = fullName;
        this.username = username;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    // Fully Parameterized Constructor
    public UserModel(int id, String fullName, String username, String email, String password, int role) {
        this.id = id;
        this.fullName = fullName;
        this.username = username;
        this.email = email;
        this.password = password;
        this.role = role;
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

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

}
