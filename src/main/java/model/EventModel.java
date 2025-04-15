package model;

import java.util.Date;
import java.time.LocalTime;

public class EventModel {

    // Defining Variables
    private int id;
    private String name;
    private String description;
    private String location;
    private Date date;
    private LocalTime time;

    // Default Constructor
    public EventModel() {

    }

    // Constructor without ID
    public EventModel(String name, String description, String location, Date date, LocalTime time) {
        this.name = name;
        this.description = description;
        this.location = location;
        this.date = date;
        this.time = time;
    }

    // Fully Parameterized Constructor
    public EventModel(int id, String name, String description, String location, Date date, LocalTime time) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.location = location;
        this.date = date;
        this.time = time;
    }

    // Getter and Setter Methods
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

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

}
