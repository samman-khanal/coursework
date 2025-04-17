package model;

import java.sql.Date;

public class UserModel {

    // Defining Variables
    private int id;
    private String fullName;
    private String username;
    private String email;
    private String password;
    private int role = 1; // For default users (students)
    private Date created_date;

    // Default Constructor
    public UserModel() {

    }

    // Constructor for new user with default role
    public UserModel(String fullName, String username, String email, String password, Date created_date) {
        this.fullName = fullName;
        this.username = username;
        this.email = email;
        this.password = password;
        this.created_date = created_date;
    }

    // Constructor with ID and default role
    public UserModel(int id, String fullName, String username, String email, String password, Date created_date) {
        this.id = id;
        this.fullName = fullName;
        this.username = username;
        this.email = email;
        this.password = password;
        this.created_date = created_date;
    }

    // Constructor for user with custom role
    public UserModel(String fullName, String username, String email, String password, int role, Date created_date) {
        this.fullName = fullName;
        this.username = username;
        this.email = email;
        this.password = password;
        this.role = role;
        this.created_date = created_date;
    }

    // Fully Parameterized Constructor
    public UserModel(int id, String fullName, String username, String email, String password, int role, Date created_date) {
        this.id = id;
        this.fullName = fullName;
        this.username = username;
        this.email = email;
        this.password = password;
        this.role = role;
        this.created_date = created_date;
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

    public Date getCreated_date() {
        return created_date;
    }

    public void setCreated_date(Date created_date) {
        this.created_date = created_date;
    }
}
