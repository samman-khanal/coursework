-- records user details
CREATE TABLE USERS (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    fullName VARCHAR(100) NOT NULL ,
    username VARCHAR(50),
    email VARCHAR(100) UNIQUE ,
    password VARCHAR(50) NOT NULL,
    role varchar(30) DEFAULT 'student',
    created_date DATE DEFAULT CURRENT_DATE
);

-- records information about events
CREATE TABLE EVENTS (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL ,
    description VARCHAR(255),
    location VARCHAR(100),
    event_date DATE,
    event_time TIME,
    issued_by INT,
    FOREIGN KEY (issued_by) REFERENCES USERS(id)
);

-- records which users registered for which events
CREATE TABLE REGISTRATION (
    registration_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    event_id INT,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES USERS(user_id),
    FOREIGN KEY (event_id) REFERENCES EVENTS(event_id),
    UNIQUE (user_id, event_id)
);

CREATE TABLE