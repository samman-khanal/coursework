package model;

<<<<<<< HEAD
import java.util.Date;
import java.time.LocalTime;

public class EventModel {

    // Defining Variables
=======
public class EventModel {
>>>>>>> cef35d0 (This commit is for final submission.)
    private int id;
    private String name;
    private String description;
    private String location;
<<<<<<< HEAD
    private Date date;
    private LocalTime time;

    // Default Constructor
    public EventModel() {

    }

    // Constructor without ID
    public EventModel(String name, String description, String location, Date date, LocalTime time) {
=======
    private String date;
    private String time;
    private int organizedBy;

    // Default Constructor
    public EventModel() {
    }

    // Constructor without ID
    public EventModel(String name, String description, String location, String date, String time, int organizedBy) {
>>>>>>> cef35d0 (This commit is for final submission.)
        this.name = name;
        this.description = description;
        this.location = location;
        this.date = date;
        this.time = time;
<<<<<<< HEAD
    }

    // Fully Parameterized Constructor
    public EventModel(int id, String name, String description, String location, Date date, LocalTime time) {
=======
        this.organizedBy = organizedBy;
    }

    // Fully Parameterized Constructor
    public EventModel(int id, String name, String description, String location, String date, String time, int organizedBy) {
>>>>>>> cef35d0 (This commit is for final submission.)
        this.id = id;
        this.name = name;
        this.description = description;
        this.location = location;
        this.date = date;
        this.time = time;
<<<<<<< HEAD
    }

    // Getter and Setter Methods
=======
        this.organizedBy = organizedBy;
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
    public String getName() {
        return name;
    }

<<<<<<< HEAD
    public void setName(String name) {
        this.name = name;
    }

=======
>>>>>>> cef35d0 (This commit is for final submission.)
    public String getDescription() {
        return description;
    }

<<<<<<< HEAD
    public void setDescription(String description) {
        this.description = description;
    }

=======
>>>>>>> cef35d0 (This commit is for final submission.)
    public String getLocation() {
        return location;
    }

<<<<<<< HEAD
=======
    public String getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }

    public int getOrganizedBy() {
        return organizedBy;
    }

    // Setter Methods
    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

>>>>>>> cef35d0 (This commit is for final submission.)
    public void setLocation(String location) {
        this.location = location;
    }

<<<<<<< HEAD
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public LocalTime getTime() {
        return time;
    }

    public void setTime(LocalTime time) {
        this.time = time;
    }

=======
    public void setDate(String date) {
        this.date = date;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setOrganizedBy(int organizedBy) {
        this.organizedBy = organizedBy;
    }
>>>>>>> cef35d0 (This commit is for final submission.)
}
